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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A315600: Coordination sequence Gal.6.35.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315600, there is no canonical definition to state claims against.
-/

/-! ## A315600.P14965215097327125371

`eq[2, A331128(A057723(n+1))]`
-/

namespace A315600.P14965215097327125371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 (A057723 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A315600.P14965215097327125371

/-!
# A315602: Coordination sequence Gal.6.525.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315602, there is no canonical definition to state claims against.
-/

/-! ## A315602.P16580149678054728930

`A315603(A062399(n))`
-/

namespace A315602.P16580149678054728930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315603 (A062399 n).toNat

end

end A315602.P16580149678054728930

/-! ## A315602.P3231385644472696718

`A315603(A120126(n))`
-/

namespace A315602.P3231385644472696718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315603 (A120126 n).toNat

end

end A315602.P3231385644472696718

/-! ## A315602.P13776009043471205111

`A315603(A351870(n))`
-/

namespace A315602.P13776009043471205111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315603 (A351870 n).toNat

end

end A315602.P13776009043471205111

/-! ## A315602.P16822143894483301130

`A315603(n)%A171317(n+1)`
-/

namespace A315602.P16822143894483301130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315603 n) (A171317 (n + 1))

end

end A315602.P16822143894483301130

/-! ## A315602.P8089306976200375158

`A315603(n)^exp(A185284(3*(n+1)))`
-/

namespace A315602.P8089306976200375158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A315603 n : ℝ) ^ (Real.exp (A185284 (3 * (n + 1)) : ℝ))

end

end A315602.P8089306976200375158

/-!
# A315604: Coordination sequence Gal.6.578.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315604, there is no canonical definition to state claims against.
-/

/-! ## A315604.P15242116137459187961

`A315605(n-A066272(A309864(n)))`
-/

namespace A315604.P15242116137459187961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315605 ((n : ℤ) - A066272 (A309864 n).toNat).toNat

end

end A315604.P15242116137459187961

/-! ## A315604.P15190269191295523939

`A315605(A062399(n))`
-/

namespace A315604.P15190269191295523939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315605 (A062399 n).toNat

end

end A315604.P15190269191295523939

/-! ## A315604.P17161993294210897894

`A315605(A120126(n))`
-/

namespace A315604.P17161993294210897894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315605 (A120126 n).toNat

end

end A315604.P17161993294210897894

/-! ## A315604.P5274590554349027869

`A315605(A351870(n))`
-/

namespace A315604.P5274590554349027869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315605 (A351870 n).toNat

end

end A315604.P5274590554349027869

/-! ## A315604.P10193469989541805476

`A315605(n)%A057695(n)`
-/

namespace A315604.P10193469989541805476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315605 n) (A057695 n)

end

end A315604.P10193469989541805476

/-!
# A315605: Coordination sequence Gal.6.577.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315605, there is no canonical definition to state claims against.
-/

/-! ## A315605.P11782860247291584412

`2*A313545(n)-A008579(n)`
-/

namespace A315605.P11782860247291584412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313545 n - A008579 n

end

end A315605.P11782860247291584412

/-! ## A315605.P12673569187837329545

`2*A313545(n)-A250122(A005843(n))`
-/

namespace A315605.P12673569187837329545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313545 n - A250122 (A005843 n).toNat

end

end A315605.P12673569187837329545

/-! ## A315605.P2105204667307146305

`A005843(A313545(n))-A008579(n)`
-/

namespace A315605.P2105204667307146305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313545 n).toNat - A008579 n

end

end A315605.P2105204667307146305

/-! ## A315605.P14847393028396701693

`A004277(A313545(n))-A250122(2*n)`
-/

namespace A315605.P14847393028396701693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313545 n).toNat - A250122 (2 * n)

end

end A315605.P14847393028396701693

/-! ## A315605.P7703704069947684802

`A004277(A313545(n))-(A265036(3*n)-3*n*gcd(2, n))`
-/

namespace A315605.P7703704069947684802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313545 n).toNat - (A265036 (3 * n) - (3 * (n * Nat.gcd 2 n) : ℤ))

end

end A315605.P7703704069947684802

/-! ## A315605.P14846571933744159573

`A005843(A313545(n))-A250122(A005843(n))`
-/

namespace A315605.P14846571933744159573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313545 n).toNat - A250122 (A005843 n).toNat

end

end A315605.P14846571933744159573

/-! ## A315605.P10089489138750688183

`A004277(A313545(n))-(A296910(n)+A237420(n))`
-/

namespace A315605.P10089489138750688183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313545 n).toNat - (A296910 n + A237420 n)

end

end A315605.P10089489138750688183

/-!
# A315606: Coordination sequence Gal.6.428.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315606, there is no canonical definition to state claims against.
-/

/-! ## A315606.P7466525594129498476

`A315607(n^A260340(n))`
-/

namespace A315606.P7466525594129498476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315607 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A315606.P7466525594129498476

/-! ## A315606.P10062867311491523859

`A315607(n)%A329625(n+2)`
-/

namespace A315606.P10062867311491523859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315607 n) (A329625 (n + 2))

end

end A315606.P10062867311491523859

/-! ## A315606.P10649346598042865151

`A315607(n*A260340(n)²²)`
-/

namespace A315606.P10649346598042865151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315607 ((n : ℤ) * (A260340 n ^ 2) ^ 2).toNat

end

end A315606.P10649346598042865151

/-! ## A315606.P18324206061836131855

`A315607(n)+A000007(A006356(n))`
-/

namespace A315606.P18324206061836131855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315607 n + A000007 (A006356 n).toNat

end

end A315606.P18324206061836131855

/-!
# A315608: Coordination sequence Gal.6.411.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315608, there is no canonical definition to state claims against.
-/

/-! ## A315608.P7238144524350906391

`record[A315609(A163351(n))]`
-/

namespace A315608.P7238144524350906391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315609 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315608.P7238144524350906391

/-! ## A315608.P14237685083359065161

`A315609(n)^A374988(floor(n/2))`
-/

namespace A315608.P14237685083359065161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315609 n : ℚ) ^ (A374988 ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A315608.P14237685083359065161

/-! ## A315608.P8691424116434601116

`A315609(n)%Δ[A228149(n+2)]`
-/

namespace A315608.P8691424116434601116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228149 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315609 n) (f1 (n + 1) - f1 n)

end

end A315608.P8691424116434601116

/-! ## A315608.P13101641442937415036

`A315609(n)+A016232(A250073(n))`
-/

namespace A315608.P13101641442937415036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315609 n + A016232 (A250073 n).toNat

end

end A315608.P13101641442937415036

/-!
# A315610: Coordination sequence Gal.5.256.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315610, the canonical program `A315610.P15546644345769821061` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315610 has offset 0).

The definition of A315610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315610.P15546644345769821061

`A311807(n)+A277618(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315610

/-- `A311807(n)+A277618(n)` -/
def P15546644345769821061.Spec : Prop :=
  ∀ n, P15546644345769821061.a n = A315610 n

theorem P15546644345769821061.correct : P15546644345769821061.Spec := by
  intro n
  simp only [A315610]

end A315610

/-! ## A315610.P12465281569103921222

`A310518(n)+2*A244895(n)`
-/

namespace A315610.P12465281569103921222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 n + 2 * A244895 n

end

end A315610.P12465281569103921222

namespace A315610

/-- `A310518(n)+2*A244895(n)` -/
def P12465281569103921222.Spec : Prop :=
  ∀ n, P12465281569103921222.a n = A315610 n

end A315610

/-! ## A315610.P17537271558933484041

`A022144(n)-2*A047326(n+1)`
-/

namespace A315610.P17537271558933484041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047326 (n + 1)

end

end A315610.P17537271558933484041

namespace A315610

/-- `A022144(n)-2*A047326(n+1)` -/
def P17537271558933484041.Spec : Prop :=
  ∀ n, P17537271558933484041.a n = A315610 n

end A315610

/-! ## A315610.P8755397364956663585

`A008574(A057354(2*n+1))+2*n`
-/

namespace A315610.P8755397364956663585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A057354 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A315610.P8755397364956663585

namespace A315610

/-- `A008574(A057354(2*n+1))+2*n` -/
def P8755397364956663585.Spec : Prop :=
  ∀ n, P8755397364956663585.a n = A315610 n

end A315610

/-! ## A315610.P4869900008956143240

`A008706(2*n)-2*A151988(2*n)`
-/

namespace A315610.P4869900008956143240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n) - 2 * A151988 (2 * n)

end

end A315610.P4869900008956143240

namespace A315610

/-- `A008706(2*n)-2*A151988(2*n)` -/
def P4869900008956143240.Spec : Prop :=
  ∀ n, P4869900008956143240.a n = A315610 n

end A315610

/-! ## A315610.P5947565525158186010

`2*A008706(n)-A008574(A047263(n+1))`
-/

namespace A315610.P5947565525158186010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A008574 (A047263 (n + 1)).toNat

end

end A315610.P5947565525158186010

namespace A315610

/-- `2*A008706(n)-A008574(A047263(n+1))` -/
def P5947565525158186010.Spec : Prop :=
  ∀ n, P5947565525158186010.a n = A315610 n

end A315610

/-! ## A315610.P676082037527207001

`A314049(n)+A244895(n)`
-/

namespace A315610.P676082037527207001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A244895 n

end

end A315610.P676082037527207001

namespace A315610

/-- `A314049(n)+A244895(n)` -/
def P676082037527207001.Spec : Prop :=
  ∀ n, P676082037527207001.a n = A315610 n

end A315610

/-! ## A315610.P17239364495482622020

`A330025(2*n)+A314049(n)`
-/

namespace A315610.P17239364495482622020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A314049 n

end

end A315610.P17239364495482622020

namespace A315610

/-- `A330025(2*n)+A314049(n)` -/
def P17239364495482622020.Spec : Prop :=
  ∀ n, P17239364495482622020.a n = A315610 n

end A315610

/-! ## A315610.P12195739470084708053

`A315418(n)+A244895(n-A244895(n))`
-/

namespace A315610.P12195739470084708053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315418 n + A244895 ((n : ℤ) - A244895 n).toNat

end

end A315610.P12195739470084708053

namespace A315610

/-- `A315418(n)+A244895(n-A244895(n))` -/
def P12195739470084708053.Spec : Prop :=
  ∀ n, P12195739470084708053.a n = A315610 n

end A315610

/-! ## A315610.P14652374249635284789

`A313873(n)+A117444(n)`
-/

namespace A315610.P14652374249635284789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + A117444 n

end

end A315610.P14652374249635284789

namespace A315610

/-- `A313873(n)+A117444(n)` -/
def P14652374249635284789.Spec : Prop :=
  ∀ n, P14652374249635284789.a n = A315610 n

end A315610

/-! ## A315610.P15714087057369881958

`2*A315654(n)-A008458(n)`
-/

namespace A315610.P15714087057369881958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315654 n - A008458 n

end

end A315610.P15714087057369881958

namespace A315610

/-- `2*A315654(n)-A008458(n)` -/
def P15714087057369881958.Spec : Prop :=
  ∀ n, P15714087057369881958.a n = A315610 n

end A315610

/-! ## A315610.P12967357013071824634

`A008458(n)-A005843(A008458(n)-A315654(n))`
-/

namespace A315610.P12967357013071824634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315654 n).toNat

end

end A315610.P12967357013071824634

namespace A315610

/-- `A008458(n)-A005843(A008458(n)-A315654(n))` -/
def P12967357013071824634.Spec : Prop :=
  ∀ n, P12967357013071824634.a n = A315610 n

end A315610

/-! ## A315610.P967809938921985966

`A310518(2*n)-A201629(A310518(n))`
-/

namespace A315610.P967809938921985966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 (2 * n) - A201629 (A310518 n).toNat

end

end A315610.P967809938921985966

namespace A315610

/-- `A310518(2*n)-A201629(A310518(n))` -/
def P967809938921985966.Spec : Prop :=
  ∀ n, P967809938921985966.a n = A315610 n

end A315610

/-! ## A315610.P340413600766060930

`A005843(A315654(n))-A008458(n)`
-/

namespace A315610.P340413600766060930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315654 n).toNat - A008458 n

end

end A315610.P340413600766060930

namespace A315610

/-- `A005843(A315654(n))-A008458(n)` -/
def P340413600766060930.Spec : Prop :=
  ∀ n, P340413600766060930.a n = A315610 n

end A315610

/-! ## A315610.P2793651183812224814

`A022998(A315654(n))-A008588(n)`
-/

namespace A315610.P2793651183812224814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A315654 n).toNat - A008588 n

end

end A315610.P2793651183812224814

namespace A315610

/-- `A022998(A315654(n))-A008588(n)` -/
def P2793651183812224814.Spec : Prop :=
  ∀ n, P2793651183812224814.a n = A315610 n

end A315610

/-! ## A315610.P8606324263070592163

`A313826(2*n)-2*A151988(2*n)`
-/

namespace A315610.P8606324263070592163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 (2 * n) - 2 * A151988 (2 * n)

end

end A315610.P8606324263070592163

namespace A315610

/-- `A313826(2*n)-2*A151988(2*n)` -/
def P8606324263070592163.Spec : Prop :=
  ∀ n, P8606324263070592163.a n = A315610 n

end A315610

/-! ## A315610.P2974585346126427061

`A313826(2*n)-A005843(A151988(2*n))`
-/

namespace A315610.P2974585346126427061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 (2 * n) - A005843 (A151988 (2 * n)).toNat

end

end A315610.P2974585346126427061

namespace A315610

/-- `A313826(2*n)-A005843(A151988(2*n))` -/
def P2974585346126427061.Spec : Prop :=
  ∀ n, P2974585346126427061.a n = A315610 n

end A315610

/-! ## A315610.P9582497143239969942

`A315755(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315610.P9582497143239969942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315610.P9582497143239969942

namespace A315610

/-- `A315755(2*n)+A008458(n+1)-(12*n+6)` -/
def P9582497143239969942.Spec : Prop :=
  ∀ n, P9582497143239969942.a n = A315610 n

end A315610

/-!
# A315611: Coordination sequence Gal.5.280.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315611, there is no canonical definition to state claims against.
-/

/-! ## A315611.P12816149726297557304

`A315612(n)-A336917(A287666(n))`
-/

namespace A315611.P12816149726297557304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315612 n - A336917 (A287666 n).toNat

end

end A315611.P12816149726297557304

/-! ## A315611.P17587020314585514656

`A315612(A029576(n)+n)`
-/

namespace A315611.P17587020314585514656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315612 (A029576 n + (n : ℤ)).toNat

end

end A315611.P17587020314585514656

/-! ## A315611.P3475473204690944490

`A315612(n*A287378(n))`
-/

namespace A315611.P3475473204690944490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315612 ((n : ℤ) * A287378 n).toNat

end

end A315611.P3475473204690944490

/-! ## A315611.P7386803211656100170

`A315612(lcm(n, A287378(n)))`
-/

namespace A315611.P7386803211656100170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315612 (Int.lcm (n : ℤ) (A287378 n))

end

end A315611.P7386803211656100170

/-!
# A315612: Coordination sequence Gal.5.279.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315612, there is no canonical definition to state claims against.
-/

/-! ## A315612.P8457602904468745112

`2*A313588(n)-A008579(n)`
-/

namespace A315612.P8457602904468745112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313588 n - A008579 n

end

end A315612.P8457602904468745112

/-! ## A315612.P12485994278953050883

`A005843(A313588(n))-A008579(n)`
-/

namespace A315612.P12485994278953050883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313588 n).toNat - A008579 n

end

end A315612.P12485994278953050883

/-! ## A315612.P2559659412341479751

`A004277(A313588(n))-A250122(2*n)`
-/

namespace A315612.P2559659412341479751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313588 n).toNat - A250122 (2 * n)

end

end A315612.P2559659412341479751

/-! ## A315612.P9382873549550719138

`A004277(A313588(n))-(A296910(n)+A237420(n))`
-/

namespace A315612.P9382873549550719138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313588 n).toNat - (A296910 n + A237420 n)

end

end A315612.P9382873549550719138

/-!
# A315613: Coordination sequence Gal.6.656.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315613, there is no canonical definition to state claims against.
-/

/-! ## A315613.P6495314237521573503

`A004275(A003644(n+1)^A058663(n+1))`
-/

namespace A315613.P6495314237521573503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A003644 (n + 1) : ℚ) ^ (A058663 (n + 1) : ℤ))).toNat

end

end A315613.P6495314237521573503

/-!
# A315614: Coordination sequence Gal.5.318.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315614, the canonical program `A315614.P3627224471220719691` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315614 has offset 0).

The definition of A315614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315614.P3627224471220719691

`2*A314067(n)-A310502(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315614

/-- `2*A314067(n)-A310502(n)` -/
def P3627224471220719691.Spec : Prop :=
  ∀ n, P3627224471220719691.a n = A315614 n

theorem P3627224471220719691.correct : P3627224471220719691.Spec := by
  intro n
  simp only [A315614]

end A315614

/-! ## A315614.P13335063578128053045

`A005843(A314067(n))-A310502(n)`
-/

namespace A315614.P13335063578128053045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314067 n).toNat - A310502 n

end

end A315614.P13335063578128053045

namespace A315614

/-- `A005843(A314067(n))-A310502(n)` -/
def P13335063578128053045.Spec : Prop :=
  ∀ n, P13335063578128053045.a n = A315614 n

end A315614

/-! ## A315614.P562776207001825017

`A008706(A008592(n))%A311612(A008706(n))`
-/

namespace A315614.P562776207001825017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A008592 n).toNat) (A311612 (A008706 n).toNat)

end

end A315614.P562776207001825017

namespace A315614

/-- `A008706(A008592(n))%A311612(A008706(n))` -/
def P562776207001825017.Spec : Prop :=
  ∀ n, P562776207001825017.a n = A315614 n

end A315614

/-! ## A315614.P13141529570027906812

`6*n+3-A105555(A081250(n))`
-/

namespace A315614.P13141529570027906812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A105555 (A081250 n).toNat

end

end A315614.P13141529570027906812

namespace A315614

/-- `6*n+3-A105555(A081250(n))` -/
def P13141529570027906812.Spec : Prop :=
  ∀ n, P13141529570027906812.a n = A315614 n

end A315614

/-!
# A315616: Coordination sequence Gal.6.36.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315616, there is no canonical definition to state claims against.
-/

/-! ## A315616.P2796457277851424522

`A315376(n)+A288106(A271269(3*n+5))`
-/

namespace A315616.P2796457277851424522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315376 n + A288106 (A271269 (3 * n + 5)).toNat

end

end A315616.P2796457277851424522

/-!
# A315617: Coordination sequence Gal.3.37.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315617, the canonical program `A315617.P12466770115023157684` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315617 has offset 0).

The definition of A315617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315617.P12466770115023157684

`A008486(A314692(n)-A008576(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315617

/-- `A008486(A314692(n)-A008576(n))` -/
def P12466770115023157684.Spec : Prop :=
  ∀ n, P12466770115023157684.a n = A315617 n

theorem P12466770115023157684.correct : P12466770115023157684.Spec := by
  intro n
  simp only [A315617]

end A315617

/-! ## A315617.P17105844826224366885

`A008486(A314692(n)%A008576(n))`
-/

namespace A315617.P17105844826224366885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A314692 n) (A008576 n)).toNat

end

end A315617.P17105844826224366885

namespace A315617

/-- `A008486(A314692(n)%A008576(n))` -/
def P17105844826224366885.Spec : Prop :=
  ∀ n, P17105844826224366885.a n = A315617 n

end A315617

/-! ## A315617.P4827066464042160471

`A315581(n)+A315623(n)-A315596(n)`
-/

namespace A315617.P4827066464042160471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315581 n + (A315623 n - A315596 n)

end

end A315617.P4827066464042160471

namespace A315617

/-- `A315581(n)+A315623(n)-A315596(n)` -/
def P4827066464042160471.Spec : Prop :=
  ∀ n, P4827066464042160471.a n = A315617 n

end A315617

/-! ## A315617.P286288201826291385

`A008486(A315256(2*n)%A008574(n))`
-/

namespace A315617.P286288201826291385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315256 (2 * n)) (A008574 n)).toNat

end

end A315617.P286288201826291385

namespace A315617

/-- `A008486(A315256(2*n)%A008574(n))` -/
def P286288201826291385.Spec : Prop :=
  ∀ n, P286288201826291385.a n = A315617 n

end A315617

/-! ## A315617.P6108503452163389130

`A008486(A315256(2*n)-A008574(2*n))`
-/

namespace A315617.P6108503452163389130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315256 (2 * n) - A008574 (2 * n)).toNat

end

end A315617.P6108503452163389130

namespace A315617

/-- `A008486(A315256(2*n)-A008574(2*n))` -/
def P6108503452163389130.Spec : Prop :=
  ∀ n, P6108503452163389130.a n = A315617 n

end A315617

/-!
# A315618: Coordination sequence Gal.5.257.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315618, there is no canonical definition to state claims against.
-/

/-! ## A315618.P12624519645104767576

`A315419(n)+∑[A131736(n)]`
-/

namespace A315618.P12624519645104767576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315618.P12624519645104767576

/-! ## A315618.P17348260223482418334

`A315419(n)-∑[A131736(n)]*A057428(n)`
-/

namespace A315618.P17348260223482418334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n - (∑ j ∈ Finset.range (n + 1), f1 j) * A057428 n

end

end A315618.P17348260223482418334

/-! ## A315618.P12525448880111883700

`∑[A232451(eq[n, A051626(n+1)])]`
-/

namespace A315618.P12525448880111883700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232451 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315618.P12525448880111883700

/-! ## A315618.P17225923990982865539

`A339213(∑[A240473((n²+n)*2^(n-1)+1)])`
-/

namespace A315618.P17225923990982865539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339213 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315618.P17225923990982865539

/-! ## A315618.P8631306330106323381

`A001950(2*n+1)-A220482(A151413(2*(n+1)))`
-/

namespace A315618.P8631306330106323381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * n + 1) - A220482 (A151413 (2 * (n + 1))).toNat

end

end A315618.P8631306330106323381

/-!
# A315619: Coordination sequence Gal.5.215.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315619, there is no canonical definition to state claims against.
-/

/-! ## A315619.P11657475862441650660

`lt[A345197(2*(n+1)), char[A132047(n)]]`
-/

namespace A315619.P11657475862441650660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A315619.P11657475862441650660

/-! ## A315619.P32951441527999140

`A008486(eq[A003196(n), A010054(n)])`
-/

namespace A315619.P32951441527999140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315619.P32951441527999140

/-! ## A315619.P14830038416657837877

`A008486(eq[A061197(n), A291149(n)])`
-/

namespace A315619.P14830038416657837877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315619.P14830038416657837877

/-! ## A315619.P14968103508439461194

`A008486(eq[A061197(n), A322473(n)])`
-/

namespace A315619.P14968103508439461194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315619.P14968103508439461194

/-! ## A315619.P15950075354884249388

`A008486(eq[A291149(n), A300705(n)])`
-/

namespace A315619.P15950075354884249388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315619.P15950075354884249388

/-!
# A315620: Coordination sequence Gal.6.489.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315620, there is no canonical definition to state claims against.
-/

/-! ## A315620.P7592649317463945482

`(A315717(n)+A315598(n))/2`
-/

namespace A315620.P7592649317463945482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315717 n + A315598 n : ℚ) / 2

end

end A315620.P7592649317463945482

/-! ## A315620.P13995193386152981513

`A014682(A315717(n)+A315598(n))`
-/

namespace A315620.P13995193386152981513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315717 n + A315598 n).toNat

end

end A315620.P13995193386152981513

/-! ## A315620.P14560407413979306097

`A008619(A315717(n)+A315598(n)-2)`
-/

namespace A315620.P14560407413979306097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315717 n + (A315598 n - 2)).toNat

end

end A315620.P14560407413979306097

/-! ## A315620.P8479745080110524428

`A001281(A315717(n)+A315598(n))`
-/

namespace A315620.P8479745080110524428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315717 n + A315598 n).toNat

end

end A315620.P8479745080110524428

/-! ## A315620.P559958703009675681

`A004525(A315717(n)+A315598(n))`
-/

namespace A315620.P559958703009675681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315717 n + A315598 n).toNat

end

end A315620.P559958703009675681

/-! ## A315620.P673961709337702639

`A004526(A315717(n)+A315598(n))`
-/

namespace A315620.P673961709337702639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315717 n + A315598 n).toNat

end

end A315620.P673961709337702639

/-! ## A315620.P11471558757192929117

`A025480(A315717(n)+A315598(n))`
-/

namespace A315620.P11471558757192929117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315717 n + A315598 n).toNat

end

end A315620.P11471558757192929117

/-! ## A315620.P6462421274112437253

`A029578(A315717(n)+A315598(n))`
-/

namespace A315620.P6462421274112437253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315717 n + A315598 n).toNat

end

end A315620.P6462421274112437253

/-! ## A315620.P16044183142527174957

`A065033(A315717(n)+A315598(n))`
-/

namespace A315620.P16044183142527174957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315717 n + A315598 n).toNat

end

end A315620.P16044183142527174957

/-! ## A315620.P12438015329916227315

`A142150(A315717(n)+A315598(n))`
-/

namespace A315620.P12438015329916227315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315717 n + A315598 n).toNat

end

end A315620.P12438015329916227315

/-! ## A315620.P10208749610266753560

`abs(A001057(A315717(n)+A315598(n)))`
-/

namespace A315620.P10208749610266753560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A315717 n + A315598 n).toNat|

end

end A315620.P10208749610266753560

/-! ## A315620.P484147291164685162

`A001057(A315598(n)+A315717(n)-1)`
-/

namespace A315620.P484147291164685162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315598 n + (A315717 n - 1)).toNat

end

end A315620.P484147291164685162

/-! ## A315620.P5932495216496289934

`A001057(A315598(n)-(1-A315717(n)))`
-/

namespace A315620.P5932495216496289934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315598 n - (1 - A315717 n)).toNat

end

end A315620.P5932495216496289934

/-! ## A315620.P1386598768678713635

`A065033(A315598(n)-(1-A315717(n)))`
-/

namespace A315620.P1386598768678713635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315598 n - (1 - A315717 n)).toNat

end

end A315620.P1386598768678713635

/-!
# A315621: Coordination sequence Gal.5.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315621, there is no canonical definition to state claims against.
-/

/-! ## A315621.P10631537980572830604

`A039672(n+1)*A040770(2^n+3^n)`
-/

namespace A315621.P10631537980572830604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1) * A040770 (2 ^ n + 3 ^ n)

end

end A315621.P10631537980572830604

/-! ## A315621.P14825068452144386396

`A039672(n+1)*A168399(3^n-abs(4-3*2^n))`
-/

namespace A315621.P14825068452144386396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1) * A168399 ((3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|).toNat

end

end A315621.P14825068452144386396

/-! ## A315621.P17698506836087904714

`A039672(n+1)*A259325(A000124(n))`
-/

namespace A315621.P17698506836087904714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039672 (n + 1) * A259325 (A000124 n).toNat

end

end A315621.P17698506836087904714

/-! ## A315621.P9109259283404573012

`(A056594(A002182(2*(n+2)))+2)*A039672(n+1)`
-/

namespace A315621.P9109259283404573012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (A002182 (2 * (n + 2))).toNat + 2) * A039672 (n + 1)

end

end A315621.P9109259283404573012

/-!
# A315622: Coordination sequence Gal.6.653.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315622, there is no canonical definition to state claims against.
-/

/-! ## A315622.P6098329841305385244

`A315598(n)+A315723(n)-A315620(n)`
-/

namespace A315622.P6098329841305385244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315598 n + (A315723 n - A315620 n)

end

end A315622.P6098329841305385244

/-! ## A315622.P15111746685522404127

`A315620(n)+A315723(n)-A315717(n)`
-/

namespace A315622.P15111746685522404127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315620 n + (A315723 n - A315717 n)

end

end A315622.P15111746685522404127

/-! ## A315622.P394961062570427111

`comp[and(n, -n)+n+n]*A006530(3^n)`
-/

namespace A315622.P394961062570427111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A006530 (3 ^ n)

end

end A315622.P394961062570427111

/-! ## A315622.P7675323273847604020

`comp[or(n, n-1)+n+1]*A007947(3^n)`
-/

namespace A315622.P7675323273847604020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A007947 (3 ^ n)

end

end A315622.P7675323273847604020

/-! ## A315622.P5133141934517508414

`comp[or(n, n-1)+n+1]*A052410(A000244(n))`
-/

namespace A315622.P5133141934517508414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A052410 (A000244 n).toNat

end

end A315622.P5133141934517508414

/-!
# A315623: Coordination sequence Gal.6.374.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315623, there is no canonical definition to state claims against.
-/

/-! ## A315623.P961443678677988403

`(A315764(n)+A315596(n))/2`
-/

namespace A315623.P961443678677988403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315764 n + A315596 n : ℚ) / 2

end

end A315623.P961443678677988403

/-! ## A315623.P14655514416733527981

`A315596(n)+A315617(n)-A315581(n)`
-/

namespace A315623.P14655514416733527981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n + (A315617 n - A315581 n)

end

end A315623.P14655514416733527981

/-! ## A315623.P8237017672918214188

`A315596(n)+A004525(A315764(n)-A315596(n))`
-/

namespace A315623.P8237017672918214188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n + A004525 (A315764 n - A315596 n).toNat

end

end A315623.P8237017672918214188

/-! ## A315623.P11518362489464937485

`A004525(A315764(n)+A315596(n))`
-/

namespace A315623.P11518362489464937485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315764 n + A315596 n).toNat

end

end A315623.P11518362489464937485

/-! ## A315623.P7932050007693311451

`A140106(A315596(n)+A315764(n)+1)+1`
-/

namespace A315623.P7932050007693311451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A315596 n + (A315764 n + 1)).toNat + 1

end

end A315623.P7932050007693311451

/-!
# A315624: Coordination sequence Gal.4.148.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315624, there is no canonical definition to state claims against.
-/

/-! ## A315624.P7242834498490322941

`record[lcm(3^(n%2), A274821(n))]`
-/

namespace A315624.P7242834498490322941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ (n % 2) : ℤ) (A274821 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315624.P7242834498490322941

/-! ## A315624.P5456722259076696586

`record[lcm(A010684(n), A274821(n))]`
-/

namespace A315624.P5456722259076696586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A274821 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315624.P5456722259076696586

/-! ## A315624.P7803953128719466434

`A001511(A001411(n))*A325442(n+1)`
-/

namespace A315624.P7803953128719466434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001411 n).toNat * A325442 (n + 1)

end

end A315624.P7803953128719466434

/-! ## A315624.P1927311972080362756

`lt[A115577(2*n+5), A097291(A028360(n))]`
-/

namespace A315624.P1927311972080362756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (A028360 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315624.P1927311972080362756

/-! ## A315624.P18235378326747229788

`A000120(A102380(3*n+1))*A026138(n+1)`
-/

namespace A315624.P18235378326747229788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A102380 (3 * n + 1)).toNat * A026138 (n + 1)

end

end A315624.P18235378326747229788

/-!
# A315625: Coordination sequence Gal.6.442.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315625, there is no canonical definition to state claims against.
-/

/-! ## A315625.P6685435596428442985

`A315626(n)-A260308(A141977(3*n+5))`
-/

namespace A315625.P6685435596428442985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 n - A260308 (A141977 (3 * n + 5)).toNat

end

end A315625.P6685435596428442985

/-! ## A315625.P18291176843419637174

`record[A315626(A172263(n))]`
-/

namespace A315625.P18291176843419637174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 (A172263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315625.P18291176843419637174

/-! ## A315625.P13137341095441290598

`A315626(n^A174544(n))`
-/

namespace A315625.P13137341095441290598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A315625.P13137341095441290598

/-! ## A315625.P6883956894717061651

`A315626(n*A174544(n)²²)`
-/

namespace A315625.P6883956894717061651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 ((n : ℤ) * (A174544 n ^ 2) ^ 2).toNat

end

end A315625.P6883956894717061651

/-! ## A315625.P14267672132012079237

`A315626(A062399(n))`
-/

namespace A315625.P14267672132012079237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 (A062399 n).toNat

end

end A315625.P14267672132012079237

/-!
# A315626: Coordination sequence Gal.6.441.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315626, there is no canonical definition to state claims against.
-/

/-! ## A315626.P10492270100911099243

`2*A313512(n)-A311603(n)`
-/

namespace A315626.P10492270100911099243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313512 n - A311603 n

end

end A315626.P10492270100911099243

/-! ## A315626.P14349865229606481188

`A004277(A313512(n))-A311603(n)`
-/

namespace A315626.P14349865229606481188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313512 n).toNat - A311603 n

end

end A315626.P14349865229606481188

/-! ## A315626.P15294550432138720038

`xor(A185284(A008486(n)), A315625(n))`
-/

namespace A315626.P15294550432138720038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A008486 n).toNat) (A315625 n)

end

end A315626.P15294550432138720038

/-! ## A315626.P8453157747664701997

`A315625(n)+A260308(A141977(3*n+5))`
-/

namespace A315626.P8453157747664701997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315625 n + A260308 (A141977 (3 * n + 5)).toNat

end

end A315626.P8453157747664701997

/-!
# A315627: Coordination sequence Gal.6.555.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315627, there is no canonical definition to state claims against.
-/

/-! ## A315627.P16897282584164446964

`A315625(n)+A001222(A193438(n))`
-/

namespace A315627.P16897282584164446964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315625 n + A001222 (A193438 n).toNat

end

end A315627.P16897282584164446964

/-! ## A315627.P7092823288124870411

`A315665(n)-A059841(A148850(n))`
-/

namespace A315627.P7092823288124870411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315665 n - A059841 (A148850 n).toNat

end

end A315627.P7092823288124870411

/-! ## A315627.P12039378860716701358

`A315665(n)-A059841(A148882(n))`
-/

namespace A315627.P12039378860716701358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315665 n - A059841 (A148882 n).toNat

end

end A315627.P12039378860716701358

/-! ## A315627.P5259680094956418156

`A315639(n)-A000122(A000045(2*(n+2)))`
-/

namespace A315627.P5259680094956418156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315639 n - A000122 (A000045 (2 * (n + 2))).toNat

end

end A315627.P5259680094956418156

/-!
# A315629: Coordination sequence Gal.6.133.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315629, the canonical program `A315629.P1423627926306205843` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315629 has offset 0).

The definition of A315629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315629.P1423627926306205843

`2*A313475(n)-A008574(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315629

/-- `2*A313475(n)-A008574(n)` -/
def P1423627926306205843.Spec : Prop :=
  ∀ n, P1423627926306205843.a n = A315629 n

theorem P1423627926306205843.correct : P1423627926306205843.Spec := by
  intro n
  simp only [A315629]

end A315629

/-! ## A315629.P11321228359549740529

`A004275(A313475(n)-A004273(n))`
-/

namespace A315629.P11321228359549740529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313475 n - A004273 n).toNat

end

end A315629.P11321228359549740529

namespace A315629

/-- `A004275(A313475(n)-A004273(n))` -/
def P11321228359549740529.Spec : Prop :=
  ∀ n, P11321228359549740529.a n = A315629 n

end A315629

/-! ## A315629.P12337208456264594294

`A004277(A313475(n)-A004277(n))`
-/

namespace A315629.P12337208456264594294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313475 n - A004277 n).toNat

end

end A315629.P12337208456264594294

namespace A315629

/-- `A004277(A313475(n)-A004277(n))` -/
def P12337208456264594294.Spec : Prop :=
  ∀ n, P12337208456264594294.a n = A315629 n

end A315629

/-! ## A315629.P15450722121249179479

`A004273(A313475(n)-n)-A004273(n)`
-/

namespace A315629.P15450722121249179479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313475 n - (n : ℤ)).toNat - A004273 n

end

end A315629.P15450722121249179479

namespace A315629

/-- `A004273(A313475(n)-n)-A004273(n)` -/
def P15450722121249179479.Spec : Prop :=
  ∀ n, P15450722121249179479.a n = A315629 n

end A315629

/-! ## A315629.P12465147931123629383

`A008574(n)+A005843(A313475(n)-A008574(n))`
-/

namespace A315629.P12465147931123629383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313475 n - A008574 n).toNat

end

end A315629.P12465147931123629383

namespace A315629

/-- `A008574(n)+A005843(A313475(n)-A008574(n))` -/
def P12465147931123629383.Spec : Prop :=
  ∀ n, P12465147931123629383.a n = A315629 n

end A315629

/-! ## A315629.P9571360100949810912

`A315667(n)-A110654(floor(4*n/11))`
-/

namespace A315629.P9571360100949810912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315667 n - A110654 ⌊4 * ((n : ℚ) / 11)⌋.toNat

end

end A315629.P9571360100949810912

namespace A315629

/-- `A315667(n)-A110654(floor(4*n/11))` -/
def P9571360100949810912.Spec : Prop :=
  ∀ n, P9571360100949810912.a n = A315629 n

end A315629

/-! ## A315629.P6164052889825746234

`A315667(n)-A004525(A315736(n)-A315667(n))`
-/

namespace A315629.P6164052889825746234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315667 n - A004525 (A315736 n - A315667 n).toNat

end

end A315629.P6164052889825746234

namespace A315629

/-- `A315667(n)-A004525(A315736(n)-A315667(n))` -/
def P6164052889825746234.Spec : Prop :=
  ∀ n, P6164052889825746234.a n = A315629 n

end A315629

/-! ## A315629.P6686524696466546580

`A005843(A313475(n))-A008574(n)`
-/

namespace A315629.P6686524696466546580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313475 n).toNat - A008574 n

end

end A315629.P6686524696466546580

namespace A315629

/-- `A005843(A313475(n))-A008574(n)` -/
def P6686524696466546580.Spec : Prop :=
  ∀ n, P6686524696466546580.a n = A315629 n

end A315629

/-! ## A315629.P18333857790229643307

`A004275(A313475(n))-A004275(2*n)`
-/

namespace A315629.P18333857790229643307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313475 n).toNat - A004275 (2 * n)

end

end A315629.P18333857790229643307

namespace A315629

/-- `A004275(A313475(n))-A004275(2*n)` -/
def P18333857790229643307.Spec : Prop :=
  ∀ n, P18333857790229643307.a n = A315629 n

end A315629

/-! ## A315629.P12497070449650041113

`abs(A008592(n)-A312685(n))`
-/

namespace A315629.P12497070449650041113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312685 n|

end

end A315629.P12497070449650041113

namespace A315629

/-- `abs(A008592(n)-A312685(n))` -/
def P12497070449650041113.Spec : Prop :=
  ∀ n, P12497070449650041113.a n = A315629 n

end A315629

/-! ## A315629.P13009420517809896970

`2*A008706(n)-A312685(n)`
-/

namespace A315629.P13009420517809896970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312685 n

end

end A315629.P13009420517809896970

namespace A315629

/-- `2*A008706(n)-A312685(n)` -/
def P13009420517809896970.Spec : Prop :=
  ∀ n, P13009420517809896970.a n = A315629 n

end A315629

/-! ## A315629.P3045359609750388841

`A135042(2*n+1)-A312685(n)`
-/

namespace A315629.P3045359609750388841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312685 n

end

end A315629.P3045359609750388841

namespace A315629

/-- `A135042(2*n+1)-A312685(n)` -/
def P3045359609750388841.Spec : Prop :=
  ∀ n, P3045359609750388841.a n = A315629 n

end A315629

/-! ## A315629.P17445726854607909117

`A008458(n)+A008574(n)-A312685(n)`
-/

namespace A315629.P17445726854607909117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312685 n)

end

end A315629.P17445726854607909117

namespace A315629

/-- `A008458(n)+A008574(n)-A312685(n)` -/
def P17445726854607909117.Spec : Prop :=
  ∀ n, P17445726854607909117.a n = A315629 n

end A315629

/-! ## A315629.P4695105235952989052

`A005843(A008706(n))-A312685(n)`
-/

namespace A315629.P4695105235952989052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312685 n

end

end A315629.P4695105235952989052

namespace A315629

/-- `A005843(A008706(n))-A312685(n)` -/
def P4695105235952989052.Spec : Prop :=
  ∀ n, P4695105235952989052.a n = A315629 n

end A315629

/-!
# A315630: Coordination sequence Gal.6.233.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315630, the canonical program `A315630.P1935897935145256014` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315630 has offset 0).

The definition of A315630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315630.P1935897935145256014

`2*A313476(n)-A008574(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315630

/-- `2*A313476(n)-A008574(n)` -/
def P1935897935145256014.Spec : Prop :=
  ∀ n, P1935897935145256014.a n = A315630 n

theorem P1935897935145256014.correct : P1935897935145256014.Spec := by
  intro n
  simp only [A315630]

end A315630

/-! ## A315630.P2165352409366513004

`A004275(A313476(n)-A004273(n))`
-/

namespace A315630.P2165352409366513004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313476 n - A004273 n).toNat

end

end A315630.P2165352409366513004

namespace A315630

/-- `A004275(A313476(n)-A004273(n))` -/
def P2165352409366513004.Spec : Prop :=
  ∀ n, P2165352409366513004.a n = A315630 n

end A315630

/-! ## A315630.P10242846340693235968

`A004273(A313476(n)-n)-A004273(n)`
-/

namespace A315630.P10242846340693235968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313476 n - (n : ℤ)).toNat - A004273 n

end

end A315630.P10242846340693235968

namespace A315630

/-- `A004273(A313476(n)-n)-A004273(n)` -/
def P10242846340693235968.Spec : Prop :=
  ∀ n, P10242846340693235968.a n = A315630 n

end A315630

/-! ## A315630.P10010788758887292641

`A008574(n)+A005843(A313476(n)-A008574(n))`
-/

namespace A315630.P10010788758887292641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313476 n - A008574 n).toNat

end

end A315630.P10010788758887292641

namespace A315630

/-- `A008574(n)+A005843(A313476(n)-A008574(n))` -/
def P10010788758887292641.Spec : Prop :=
  ∀ n, P10010788758887292641.a n = A315630 n

end A315630

/-! ## A315630.P15370672334792573862

`A313568(n)+A253262(n)`
-/

namespace A315630.P15370672334792573862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A253262 n

end

end A315630.P15370672334792573862

namespace A315630

/-- `A313568(n)+A253262(n)` -/
def P15370672334792573862.Spec : Prop :=
  ∀ n, P15370672334792573862.a n = A315630 n

end A315630

/-! ## A315630.P12674684171471339219

`A330025(n-A330025(n))+A315402(n)`
-/

namespace A315630.P12674684171471339219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315402 n

end

end A315630.P12674684171471339219

namespace A315630

/-- `A330025(n-A330025(n))+A315402(n)` -/
def P12674684171471339219.Spec : Prop :=
  ∀ n, P12674684171471339219.a n = A315630 n

end A315630

/-! ## A315630.P5043006798461540228

`A330025(A330025(n)+n)+A314020(n)`
-/

namespace A315630.P5043006798461540228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314020 n

end

end A315630.P5043006798461540228

namespace A315630

/-- `A330025(A330025(n)+n)+A314020(n)` -/
def P5043006798461540228.Spec : Prop :=
  ∀ n, P5043006798461540228.a n = A315630 n

end A315630

/-! ## A315630.P74861292710228658

`abs(A008592(n)-A312684(n))`
-/

namespace A315630.P74861292710228658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312684 n|

end

end A315630.P74861292710228658

namespace A315630

/-- `abs(A008592(n)-A312684(n))` -/
def P74861292710228658.Spec : Prop :=
  ∀ n, P74861292710228658.a n = A315630 n

end A315630

/-! ## A315630.P8851405153483189934

`2*A008706(n)-A312684(n)`
-/

namespace A315630.P8851405153483189934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312684 n

end

end A315630.P8851405153483189934

namespace A315630

/-- `2*A008706(n)-A312684(n)` -/
def P8851405153483189934.Spec : Prop :=
  ∀ n, P8851405153483189934.a n = A315630 n

end A315630

/-! ## A315630.P6422655381695419568

`A008458(n)+A008574(n)-A312684(n)`
-/

namespace A315630.P6422655381695419568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312684 n)

end

end A315630.P6422655381695419568

namespace A315630

/-- `A008458(n)+A008574(n)-A312684(n)` -/
def P6422655381695419568.Spec : Prop :=
  ∀ n, P6422655381695419568.a n = A315630 n

end A315630

/-! ## A315630.P8918307135488583938

`A311634(n)+2*A253262(n)`
-/

namespace A315630.P8918307135488583938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311634 n + 2 * A253262 n

end

end A315630.P8918307135488583938

namespace A315630

/-- `A311634(n)+2*A253262(n)` -/
def P8918307135488583938.Spec : Prop :=
  ∀ n, P8918307135488583938.a n = A315630 n

end A315630

/-! ## A315630.P9249688379141211760

`2*A315684(n)-A008458(n)`
-/

namespace A315630.P9249688379141211760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315684 n - A008458 n

end

end A315630.P9249688379141211760

namespace A315630

/-- `2*A315684(n)-A008458(n)` -/
def P9249688379141211760.Spec : Prop :=
  ∀ n, P9249688379141211760.a n = A315630 n

end A315630

/-! ## A315630.P7145450474625526622

`A005843(A313476(n))-A008574(n)`
-/

namespace A315630.P7145450474625526622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313476 n).toNat - A008574 n

end

end A315630.P7145450474625526622

namespace A315630

/-- `A005843(A313476(n))-A008574(n)` -/
def P7145450474625526622.Spec : Prop :=
  ∀ n, P7145450474625526622.a n = A315630 n

end A315630

/-! ## A315630.P9642972143915737379

`A004275(A313476(n))-A004275(2*n)`
-/

namespace A315630.P9642972143915737379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313476 n).toNat - A004275 (2 * n)

end

end A315630.P9642972143915737379

namespace A315630

/-- `A004275(A313476(n))-A004275(2*n)` -/
def P9642972143915737379.Spec : Prop :=
  ∀ n, P9642972143915737379.a n = A315630 n

end A315630

/-! ## A315630.P7375015167264529310

`A005843(A008706(n))-A312684(n)`
-/

namespace A315630.P7375015167264529310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312684 n

end

end A315630.P7375015167264529310

namespace A315630

/-- `A005843(A008706(n))-A312684(n)` -/
def P7375015167264529310.Spec : Prop :=
  ∀ n, P7375015167264529310.a n = A315630 n

end A315630

/-! ## A315630.P2842689756699671737

`2*A313476(n)-A123108(8*n)`
-/

namespace A315630.P2842689756699671737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313476 n - A123108 (8 * n)

end

end A315630.P2842689756699671737

namespace A315630

/-- `2*A313476(n)-A123108(8*n)` -/
def P2842689756699671737.Spec : Prop :=
  ∀ n, P2842689756699671737.a n = A315630 n

end A315630

/-!
# A315631: Coordination sequence Gal.5.68.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315631, the canonical program `A315631.P14361202183170723118` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315631 has offset 0).

The definition of A315631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315631.P5090148747649501174

`2*A313477(n)-A008574(n)`
-/

namespace A315631.P5090148747649501174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313477 n - A008574 n

end

end A315631.P5090148747649501174

namespace A315631

/-- `2*A313477(n)-A008574(n)` -/
def P5090148747649501174.Spec : Prop :=
  ∀ n, P5090148747649501174.a n = A315631 n

end A315631

/-! ## A315631.P7481496164504806714

`A004275(A313477(n)-A004273(n))`
-/

namespace A315631.P7481496164504806714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313477 n - A004273 n).toNat

end

end A315631.P7481496164504806714

namespace A315631

/-- `A004275(A313477(n)-A004273(n))` -/
def P7481496164504806714.Spec : Prop :=
  ∀ n, P7481496164504806714.a n = A315631 n

end A315631

/-! ## A315631.P16775643579068796586

`A103517(A313477(n)-A005408(n))`
-/

namespace A315631.P16775643579068796586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313477 n - A005408 n).toNat

end

end A315631.P16775643579068796586

namespace A315631

/-- `A103517(A313477(n)-A005408(n))` -/
def P16775643579068796586.Spec : Prop :=
  ∀ n, P16775643579068796586.a n = A315631 n

end A315631

/-! ## A315631.P14361202183170723118

`A315398(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315631

/-- `A315398(n)+A004396(n-A004396(n))` -/
def P14361202183170723118.Spec : Prop :=
  ∀ n, P14361202183170723118.a n = A315631 n

theorem P14361202183170723118.correct : P14361202183170723118.Spec := by
  intro n
  simp only [A315631]

end A315631

/-! ## A315631.P9335047326148507063

`A004273(A313477(n)-n)-A004273(n)`
-/

namespace A315631.P9335047326148507063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313477 n - (n : ℤ)).toNat - A004273 n

end

end A315631.P9335047326148507063

namespace A315631

/-- `A004273(A313477(n)-n)-A004273(n)` -/
def P9335047326148507063.Spec : Prop :=
  ∀ n, P9335047326148507063.a n = A315631 n

end A315631

/-! ## A315631.P1015920659450940674

`A008574(n)+A005843(A313477(n)-A008574(n))`
-/

namespace A315631.P1015920659450940674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313477 n - A008574 n).toNat

end

end A315631.P1015920659450940674

namespace A315631

/-- `A008574(n)+A005843(A313477(n)-A008574(n))` -/
def P1015920659450940674.Spec : Prop :=
  ∀ n, P1015920659450940674.a n = A315631 n

end A315631

/-! ## A315631.P11315348196833284030

`abs(A008592(n)-A312683(n))`
-/

namespace A315631.P11315348196833284030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312683 n|

end

end A315631.P11315348196833284030

namespace A315631

/-- `abs(A008592(n)-A312683(n))` -/
def P11315348196833284030.Spec : Prop :=
  ∀ n, P11315348196833284030.a n = A315631 n

end A315631

/-! ## A315631.P9479075894454520390

`2*A008706(n)-A312683(n)`
-/

namespace A315631.P9479075894454520390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312683 n

end

end A315631.P9479075894454520390

namespace A315631

/-- `2*A008706(n)-A312683(n)` -/
def P9479075894454520390.Spec : Prop :=
  ∀ n, P9479075894454520390.a n = A315631 n

end A315631

/-! ## A315631.P6592625408328665289

`A008458(n)+A008574(n)-A312683(n)`
-/

namespace A315631.P6592625408328665289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312683 n)

end

end A315631.P6592625408328665289

namespace A315631

/-- `A008458(n)+A008574(n)-A312683(n)` -/
def P6592625408328665289.Spec : Prop :=
  ∀ n, P6592625408328665289.a n = A315631 n

end A315631

/-! ## A315631.P14439571895287937418

`A315669(n)-Δ[A011862(n)]`
-/

namespace A315631.P14439571895287937418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315669 n - (f1 (n + 1) - f1 n)

end

end A315631.P14439571895287937418

namespace A315631

/-- `A315669(n)-Δ[A011862(n)]` -/
def P14439571895287937418.Spec : Prop :=
  ∀ n, P14439571895287937418.a n = A315631 n

end A315631

/-! ## A315631.P9226178218078900620

`A315727(n)-Δ[2*A011862(n)]`
-/

namespace A315631.P9226178218078900620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315727 n - (f1 (n + 1) - f1 n)

end

end A315631.P9226178218078900620

namespace A315631

/-- `A315727(n)-Δ[2*A011862(n)]` -/
def P9226178218078900620.Spec : Prop :=
  ∀ n, P9226178218078900620.a n = A315631 n

end A315631

/-! ## A315631.P16879583763811602427

`A005843(A313477(n))-A008574(n)`
-/

namespace A315631.P16879583763811602427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313477 n).toNat - A008574 n

end

end A315631.P16879583763811602427

namespace A315631

/-- `A005843(A313477(n))-A008574(n)` -/
def P16879583763811602427.Spec : Prop :=
  ∀ n, P16879583763811602427.a n = A315631 n

end A315631

/-! ## A315631.P1233233988304745224

`A004275(A313477(n))-A004275(2*n)`
-/

namespace A315631.P1233233988304745224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313477 n).toNat - A004275 (2 * n)

end

end A315631.P1233233988304745224

namespace A315631

/-- `A004275(A313477(n))-A004275(2*n)` -/
def P1233233988304745224.Spec : Prop :=
  ∀ n, P1233233988304745224.a n = A315631 n

end A315631

/-! ## A315631.P466123558915027653

`A005843(A008706(n))-A312683(n)`
-/

namespace A315631.P466123558915027653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312683 n

end

end A315631.P466123558915027653

namespace A315631

/-- `A005843(A008706(n))-A312683(n)` -/
def P466123558915027653.Spec : Prop :=
  ∀ n, P466123558915027653.a n = A315631 n

end A315631

/-!
# A315632: Coordination sequence Gal.5.112.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315632, the canonical program `A315632.P5421260199961384495` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315632 has offset 0).

The definition of A315632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315632.P12250827423688868688

`A008458(n)-∑[and(4, n+1)/2]`
-/

namespace A315632.P12250827423688868688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315632.P12250827423688868688

namespace A315632

/-- `A008458(n)-∑[and(4, n+1)/2]` -/
def P12250827423688868688.Spec : Prop :=
  ∀ n, P12250827423688868688.a n = (A315632 n : ℚ)

end A315632

/-! ## A315632.P5002918693282461132

`A314026(n)+A046978(n)`
-/

namespace A315632.P5002918693282461132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A046978 n

end

end A315632.P5002918693282461132

namespace A315632

/-- `A314026(n)+A046978(n)` -/
def P5002918693282461132.Spec : Prop :=
  ∀ n, P5002918693282461132.a n = A315632 n

end A315632

/-! ## A315632.P5421260199961384495

`2*A313480(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315632

/-- `2*A313480(n)-A008574(n)` -/
def P5421260199961384495.Spec : Prop :=
  ∀ n, P5421260199961384495.a n = A315632 n

theorem P5421260199961384495.correct : P5421260199961384495.Spec := by
  intro n
  simp only [A315632]

end A315632

/-! ## A315632.P6822536949896862333

`2*A315685(n)-A008458(n)`
-/

namespace A315632.P6822536949896862333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315685 n - A008458 n

end

end A315632.P6822536949896862333

namespace A315632

/-- `2*A315685(n)-A008458(n)` -/
def P6822536949896862333.Spec : Prop :=
  ∀ n, P6822536949896862333.a n = A315632 n

end A315632

/-! ## A315632.P5142686398058384893

`A008458(n)-∑[and(2, A161680(n))]`
-/

namespace A315632.P5142686398058384893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A161680 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315632.P5142686398058384893

namespace A315632

/-- `A008458(n)-∑[and(2, A161680(n))]` -/
def P5142686398058384893.Spec : Prop :=
  ∀ n, P5142686398058384893.a n = A315632 n

end A315632

/-! ## A315632.P11105228454004326192

`A004275(A313480(n)-A004273(n))`
-/

namespace A315632.P11105228454004326192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313480 n - A004273 n).toNat

end

end A315632.P11105228454004326192

namespace A315632

/-- `A004275(A313480(n)-A004273(n))` -/
def P11105228454004326192.Spec : Prop :=
  ∀ n, P11105228454004326192.a n = A315632 n

end A315632

/-! ## A315632.P15231939052530601373

`A310370(n)+2*A004525(A004525(n))`
-/

namespace A315632.P15231939052530601373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + 2 * A004525 (A004525 n).toNat

end

end A315632.P15231939052530601373

namespace A315632

/-- `A310370(n)+2*A004525(A004525(n))` -/
def P15231939052530601373.Spec : Prop :=
  ∀ n, P15231939052530601373.a n = A315632 n

end A315632

/-! ## A315632.P15751740849716594802

`A314090(n)+A046978(A046978(n)+n)`
-/

namespace A315632.P15751740849716594802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315632.P15751740849716594802

namespace A315632

/-- `A314090(n)+A046978(A046978(n)+n)` -/
def P15751740849716594802.Spec : Prop :=
  ∀ n, P15751740849716594802.a n = A315632 n

end A315632

/-! ## A315632.P2641476928124874105

`A315411(n)+A046978(n-A046978(n))`
-/

namespace A315632.P2641476928124874105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A315632.P2641476928124874105

namespace A315632

/-- `A315411(n)+A046978(n-A046978(n))` -/
def P2641476928124874105.Spec : Prop :=
  ∀ n, P2641476928124874105.a n = A315632 n

end A315632

/-! ## A315632.P5758262445786529699

`A004273(A313480(n)-n)-A004273(n)`
-/

namespace A315632.P5758262445786529699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313480 n - (n : ℤ)).toNat - A004273 n

end

end A315632.P5758262445786529699

namespace A315632

/-- `A004273(A313480(n)-n)-A004273(n)` -/
def P5758262445786529699.Spec : Prop :=
  ∀ n, P5758262445786529699.a n = A315632 n

end A315632

/-! ## A315632.P1712931957056915211

`abs(A008592(n)-A312682(n))`
-/

namespace A315632.P1712931957056915211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312682 n|

end

end A315632.P1712931957056915211

namespace A315632

/-- `abs(A008592(n)-A312682(n))` -/
def P1712931957056915211.Spec : Prop :=
  ∀ n, P1712931957056915211.a n = A315632 n

end A315632

/-! ## A315632.P9121767115089917683

`floor(A010015(n)/A312682(n))`
-/

namespace A315632.P9121767115089917683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A312682 n : ℚ)⌋

end

end A315632.P9121767115089917683

namespace A315632

/-- `floor(A010015(n)/A312682(n))` -/
def P9121767115089917683.Spec : Prop :=
  ∀ n, P9121767115089917683.a n = A315632 n

end A315632

/-! ## A315632.P4224998388802951832

`A008458(n)+A008574(n)-A312682(n)`
-/

namespace A315632.P4224998388802951832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312682 n)

end

end A315632.P4224998388802951832

namespace A315632

/-- `A008458(n)+A008574(n)-A312682(n)` -/
def P4224998388802951832.Spec : Prop :=
  ∀ n, P4224998388802951832.a n = A315632 n

end A315632

/-! ## A315632.P5529019979962419877

`A310419(n)+2*A046978(n)`
-/

namespace A315632.P5529019979962419877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310419 n + 2 * A046978 n

end

end A315632.P5529019979962419877

namespace A315632

/-- `A310419(n)+2*A046978(n)` -/
def P5529019979962419877.Spec : Prop :=
  ∀ n, P5529019979962419877.a n = A315632 n

end A315632

/-! ## A315632.P16821193289210897055

`A315671(n)-Δ[A011861(n)]`
-/

namespace A315632.P16821193289210897055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - (f1 (n + 1) - f1 n)

end

end A315632.P16821193289210897055

namespace A315632

/-- `A315671(n)-Δ[A011861(n)]` -/
def P16821193289210897055.Spec : Prop :=
  ∀ n, P16821193289210897055.a n = A315632 n

end A315632

/-! ## A315632.P6529596939620483276

`A315399(n)+A004525(n-A004525(n))`
-/

namespace A315632.P6529596939620483276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A315632.P6529596939620483276

namespace A315632

/-- `A315399(n)+A004525(n-A004525(n))` -/
def P6529596939620483276.Spec : Prop :=
  ∀ n, P6529596939620483276.a n = A315632 n

end A315632

/-! ## A315632.P15040649239686597685

`A004275(A313480(n))-A004275(2*n)`
-/

namespace A315632.P15040649239686597685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313480 n).toNat - A004275 (2 * n)

end

end A315632.P15040649239686597685

namespace A315632

/-- `A004275(A313480(n))-A004275(2*n)` -/
def P15040649239686597685.Spec : Prop :=
  ∀ n, P15040649239686597685.a n = A315632 n

end A315632

/-! ## A315632.P8380824876418600746

`A074067(A312682(n))`
-/

namespace A315632.P8380824876418600746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A312682 n).toNat

end

end A315632.P8380824876418600746

namespace A315632

/-- `A074067(A312682(n))` -/
def P8380824876418600746.Spec : Prop :=
  ∀ n, P8380824876418600746.a n = A315632 n

end A315632

/-!
# A315633: Coordination sequence Gal.6.261.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315633, the canonical program `A315633.P2404636861496896285` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315633 has offset 0).

The definition of A315633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315633.P939304847924225158

`2*A313722(n)-A312668(n)`
-/

namespace A315633.P939304847924225158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313722 n - A312668 n

end

end A315633.P939304847924225158

namespace A315633

/-- `2*A313722(n)-A312668(n)` -/
def P939304847924225158.Spec : Prop :=
  ∀ n, P939304847924225158.a n = A315633 n

end A315633

/-! ## A315633.P2404636861496896285

`abs(A008592(n)-A312681(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315633

/-- `abs(A008592(n)-A312681(n))` -/
def P2404636861496896285.Spec : Prop :=
  ∀ n, P2404636861496896285.a n = A315633 n

theorem P2404636861496896285.correct : P2404636861496896285.Spec := by
  intro n
  simp only [A315633]

end A315633

/-! ## A315633.P13381177957082073693

`2*A008706(n)-A312681(n)`
-/

namespace A315633.P13381177957082073693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312681 n

end

end A315633.P13381177957082073693

namespace A315633

/-- `2*A008706(n)-A312681(n)` -/
def P13381177957082073693.Spec : Prop :=
  ∀ n, P13381177957082073693.a n = A315633 n

end A315633

/-! ## A315633.P16990803909588359097

`abs(12*n-(A312681(n)+A005843(n)))`
-/

namespace A315633.P16990803909588359097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(12 * n : ℤ) - (A312681 n + A005843 n)|

end

end A315633.P16990803909588359097

namespace A315633

/-- `abs(12*n-(A312681(n)+A005843(n)))` -/
def P16990803909588359097.Spec : Prop :=
  ∀ n, P16990803909588359097.a n = A315633 n

theorem P16990803909588359097.correct : P16990803909588359097.Spec := by
  intro n
  simp only [A315633, Nat.add_sub_cancel, A315633.P16990803909588359097.a, A315633.P2404636861496896285.a, A005843, A005843.P3167286115683555970.a, A008592, A008592.P4981059802862696142.a, A312681, A312681.P5384557815485035993.a, A008574, A008574.P1300280032690682112.a, A312125, A312125.P6689713832904846624.f1, A312125.P6689713832904846624.a, A011864, A011864.P3547417513882699266.a, A311593, A311593.P3587979867360531778.a, A311434, A311434.P5901078868228664766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315633

/-! ## A315633.P14977147217254539843

`A008458(n)+A008574(n)-A312681(n)`
-/

namespace A315633.P14977147217254539843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312681 n)

end

end A315633.P14977147217254539843

namespace A315633

/-- `A008458(n)+A008574(n)-A312681(n)` -/
def P14977147217254539843.Spec : Prop :=
  ∀ n, P14977147217254539843.a n = A315633 n

end A315633

/-! ## A315633.P8297137336214691362

`A004442(A017281(n)-A312681(n))`
-/

namespace A315633.P8297137336214691362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A312681 n).toNat

end

end A315633.P8297137336214691362

namespace A315633

/-- `A004442(A017281(n)-A312681(n))` -/
def P8297137336214691362.Spec : Prop :=
  ∀ n, P8297137336214691362.a n = A315633 n

end A315633

/-! ## A315633.P9829494081438007922

`2*A315686(n)-A008458(n)`
-/

namespace A315633.P9829494081438007922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315686 n - A008458 n

end

end A315633.P9829494081438007922

namespace A315633

/-- `2*A315686(n)-A008458(n)` -/
def P9829494081438007922.Spec : Prop :=
  ∀ n, P9829494081438007922.a n = A315633 n

end A315633

/-! ## A315633.P9401524323784376952

`A103517(A315686(n)-A016777(n))`
-/

namespace A315633.P9401524323784376952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315686 n - A016777 n).toNat

end

end A315633.P9401524323784376952

namespace A315633

/-- `A103517(A315686(n)-A016777(n))` -/
def P9401524323784376952.Spec : Prop :=
  ∀ n, P9401524323784376952.a n = A315633 n

end A315633

/-! ## A315633.P9606852217151586890

`A103517(A315686(n)%A016777(n))`
-/

namespace A315633.P9606852217151586890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315686 n) (A016777 n)).toNat

end

end A315633.P9606852217151586890

namespace A315633

/-- `A103517(A315686(n)%A016777(n))` -/
def P9606852217151586890.Spec : Prop :=
  ∀ n, P9606852217151586890.a n = A315633 n

end A315633

/-! ## A315633.P18362571792297640261

`A008458(n)-A005843(A008458(n)-A315686(n))`
-/

namespace A315633.P18362571792297640261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315686 n).toNat

end

end A315633.P18362571792297640261

namespace A315633

/-- `A008458(n)-A005843(A008458(n)-A315686(n))` -/
def P18362571792297640261.Spec : Prop :=
  ∀ n, P18362571792297640261.a n = A315633 n

end A315633

/-! ## A315633.P7836641758320991517

`A005843(A008706(n))-A312681(n)`
-/

namespace A315633.P7836641758320991517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312681 n

end

end A315633.P7836641758320991517

namespace A315633

/-- `A005843(A008706(n))-A312681(n)` -/
def P7836641758320991517.Spec : Prop :=
  ∀ n, P7836641758320991517.a n = A315633 n

end A315633

/-! ## A315633.P142789871356923569

`A005843(A315686(n))-A008458(n)`
-/

namespace A315633.P142789871356923569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315686 n).toNat - A008458 n

end

end A315633.P142789871356923569

namespace A315633

/-- `A005843(A315686(n))-A008458(n)` -/
def P142789871356923569.Spec : Prop :=
  ∀ n, P142789871356923569.a n = A315633 n

end A315633

/-!
# A315634: Coordination sequence Gal.4.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315634, the canonical program `A315634.P4185785318995043649` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315634 has offset 0).

The definition of A315634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315634.P4185785318995043649

`abs(A008592(n)-A312680(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315634

/-- `abs(A008592(n)-A312680(n))` -/
def P4185785318995043649.Spec : Prop :=
  ∀ n, P4185785318995043649.a n = A315634 n

theorem P4185785318995043649.correct : P4185785318995043649.Spec := by
  intro n
  simp only [A315634]

end A315634

/-! ## A315634.P11204578652469517852

`2*A008706(n)-A312680(n)`
-/

namespace A315634.P11204578652469517852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312680 n

end

end A315634.P11204578652469517852

namespace A315634

/-- `2*A008706(n)-A312680(n)` -/
def P11204578652469517852.Spec : Prop :=
  ∀ n, P11204578652469517852.a n = A315634 n

end A315634

/-! ## A315634.P9654178751967250261

`2*A313487(n)-A008574(n)`
-/

namespace A315634.P9654178751967250261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313487 n - A008574 n

end

end A315634.P9654178751967250261

namespace A315634

/-- `2*A313487(n)-A008574(n)` -/
def P9654178751967250261.Spec : Prop :=
  ∀ n, P9654178751967250261.a n = A315634 n

end A315634

/-! ## A315634.P12997836583357870850

`A004275(A313487(n)-A004273(n))`
-/

namespace A315634.P12997836583357870850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313487 n - A004273 n).toNat

end

end A315634.P12997836583357870850

namespace A315634

/-- `A004275(A313487(n)-A004273(n))` -/
def P12997836583357870850.Spec : Prop :=
  ∀ n, P12997836583357870850.a n = A315634 n

end A315634

/-! ## A315634.P12415998604853227766

`A008458(n)+A008574(n)-A312680(n)`
-/

namespace A315634.P12415998604853227766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312680 n)

end

end A315634.P12415998604853227766

namespace A315634

/-- `A008458(n)+A008574(n)-A312680(n)` -/
def P12415998604853227766.Spec : Prop :=
  ∀ n, P12415998604853227766.a n = A315634 n

end A315634

/-! ## A315634.P6823307683473237051

`A004273(A313487(n)-n)-A004273(n)`
-/

namespace A315634.P6823307683473237051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313487 n - (n : ℤ)).toNat - A004273 n

end

end A315634.P6823307683473237051

namespace A315634

/-- `A004273(A313487(n)-n)-A004273(n)` -/
def P6823307683473237051.Spec : Prop :=
  ∀ n, P6823307683473237051.a n = A315634 n

end A315634

/-! ## A315634.P8228374717131920129

`∑{d}[A008592(n)-A312680(n), A000010(#)]`
-/

namespace A315634.P8228374717131920129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315634.P8228374717131920129

namespace A315634

/-- `∑{d}[A008592(n)-A312680(n), A000010(#)]` -/
def P8228374717131920129.Spec : Prop :=
  ∀ n, P8228374717131920129.a n = A315634 n

end A315634

/-! ## A315634.P14906252414210726201

`A008574(n)+A005843(A313487(n)-A008574(n))`
-/

namespace A315634.P14906252414210726201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313487 n - A008574 n).toNat

end

end A315634.P14906252414210726201

namespace A315634

/-- `A008574(n)+A005843(A313487(n)-A008574(n))` -/
def P14906252414210726201.Spec : Prop :=
  ∀ n, P14906252414210726201.a n = A315634 n

end A315634

/-! ## A315634.P2324134392081592946

`A315423(n)+A175629(n-A175629(n))`
-/

namespace A315634.P2324134392081592946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n + A175629 ((n : ℤ) - A175629 n).toNat

end

end A315634.P2324134392081592946

namespace A315634

/-- `A315423(n)+A175629(n-A175629(n))` -/
def P2324134392081592946.Spec : Prop :=
  ∀ n, P2324134392081592946.a n = A315634 n

end A315634

/-! ## A315634.P13420873972426743361

`A315452(n)+A238470(n)`
-/

namespace A315634.P13420873972426743361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n + A238470 n

end

end A315634.P13420873972426743361

namespace A315634

/-- `A315452(n)+A238470(n)` -/
def P13420873972426743361.Spec : Prop :=
  ∀ n, P13420873972426743361.a n = A315634 n

end A315634

/-! ## A315634.P12594088426060278931

`A315309(n)+2*A238470(n)`
-/

namespace A315634.P12594088426060278931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n + 2 * A238470 n

end

end A315634.P12594088426060278931

namespace A315634

/-- `A315309(n)+2*A238470(n)` -/
def P12594088426060278931.Spec : Prop :=
  ∀ n, P12594088426060278931.a n = A315634 n

end A315634

/-! ## A315634.P12787868033189238222

`A315676(n)-Δ[A011860(n)]`
-/

namespace A315634.P12787868033189238222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n - (f1 (n + 1) - f1 n)

end

end A315634.P12787868033189238222

namespace A315634

/-- `A315676(n)-Δ[A011860(n)]` -/
def P12787868033189238222.Spec : Prop :=
  ∀ n, P12787868033189238222.a n = A315634 n

end A315634

/-! ## A315634.P2737769857666433525

`A005843(A313487(n))-A008574(n)`
-/

namespace A315634.P2737769857666433525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313487 n).toNat - A008574 n

end

end A315634.P2737769857666433525

namespace A315634

/-- `A005843(A313487(n))-A008574(n)` -/
def P2737769857666433525.Spec : Prop :=
  ∀ n, P2737769857666433525.a n = A315634 n

end A315634

/-! ## A315634.P2986208060174034429

`A004275(A313487(n))-A004275(2*n)`
-/

namespace A315634.P2986208060174034429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313487 n).toNat - A004275 (2 * n)

end

end A315634.P2986208060174034429

namespace A315634

/-- `A004275(A313487(n))-A004275(2*n)` -/
def P2986208060174034429.Spec : Prop :=
  ∀ n, P2986208060174034429.a n = A315634 n

end A315634

/-! ## A315634.P1317645314544762477

`A005843(A008706(n))-A312680(n)`
-/

namespace A315634.P1317645314544762477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312680 n

end

end A315634.P1317645314544762477

namespace A315634

/-- `A005843(A008706(n))-A312680(n)` -/
def P1317645314544762477.Spec : Prop :=
  ∀ n, P1317645314544762477.a n = A315634 n

end A315634

/-!
# A315635: Coordination sequence Gal.5.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315635, the canonical program `A315635.P8833083240830505052` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315635 has offset 0).

The definition of A315635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315635.P12981701971273003469

`2*A315690(n)-A008458(n)`
-/

namespace A315635.P12981701971273003469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315690 n - A008458 n

end

end A315635.P12981701971273003469

namespace A315635

/-- `2*A315690(n)-A008458(n)` -/
def P12981701971273003469.Spec : Prop :=
  ∀ n, P12981701971273003469.a n = A315635 n

end A315635

/-! ## A315635.P8833083240830505052

`A315172(n)+A008612(A016813(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315635

/-- `A315172(n)+A008612(A016813(n))` -/
def P8833083240830505052.Spec : Prop :=
  ∀ n, P8833083240830505052.a n = A315635 n

theorem P8833083240830505052.correct : P8833083240830505052.Spec := by
  intro n
  simp only [A315635]

end A315635

/-! ## A315635.P12892865036619551762

`A103517(A315690(n)-A016777(n))`
-/

namespace A315635.P12892865036619551762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315690 n - A016777 n).toNat

end

end A315635.P12892865036619551762

namespace A315635

/-- `A103517(A315690(n)-A016777(n))` -/
def P12892865036619551762.Spec : Prop :=
  ∀ n, P12892865036619551762.a n = A315635 n

end A315635

/-! ## A315635.P7550216334397629286

`A008458(n)-A005843(A008458(n)-A315690(n))`
-/

namespace A315635.P7550216334397629286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315690 n).toNat

end

end A315635.P7550216334397629286

namespace A315635

/-- `A008458(n)-A005843(A008458(n)-A315690(n))` -/
def P7550216334397629286.Spec : Prop :=
  ∀ n, P7550216334397629286.a n = A315635 n

end A315635

/-! ## A315635.P5120854440992930540

`abs(A008592(n)-A312669(n))`
-/

namespace A315635.P5120854440992930540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312669 n|

end

end A315635.P5120854440992930540

namespace A315635

/-- `abs(A008592(n)-A312669(n))` -/
def P5120854440992930540.Spec : Prop :=
  ∀ n, P5120854440992930540.a n = A315635 n

end A315635

/-! ## A315635.P18173040552749241879

`2*A008706(n)-A312669(n)`
-/

namespace A315635.P18173040552749241879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312669 n

end

end A315635.P18173040552749241879

namespace A315635

/-- `2*A008706(n)-A312669(n)` -/
def P18173040552749241879.Spec : Prop :=
  ∀ n, P18173040552749241879.a n = A315635 n

end A315635

/-! ## A315635.P11638219589181457595

`abs(A017281(n)-(A312669(n)+1))`
-/

namespace A315635.P11638219589181457595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017281 n - (A312669 n + 1)|

end

end A315635.P11638219589181457595

namespace A315635

/-- `abs(A017281(n)-(A312669(n)+1))` -/
def P11638219589181457595.Spec : Prop :=
  ∀ n, P11638219589181457595.a n = A315635 n

end A315635

/-! ## A315635.P15608569638512870565

`A008458(n)+A008574(n)-A312669(n)`
-/

namespace A315635.P15608569638512870565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312669 n)

end

end A315635.P15608569638512870565

namespace A315635

/-- `A008458(n)+A008574(n)-A312669(n)` -/
def P15608569638512870565.Spec : Prop :=
  ∀ n, P15608569638512870565.a n = A315635 n

end A315635

/-! ## A315635.P7911407725775714561

`2*A219529(n)-A310531(n)`
-/

namespace A315635.P7911407725775714561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A310531 n

end

end A315635.P7911407725775714561

namespace A315635

/-- `2*A219529(n)-A310531(n)` -/
def P7911407725775714561.Spec : Prop :=
  ∀ n, P7911407725775714561.a n = A315635 n

end A315635

/-! ## A315635.P13577546307303354250

`A017281(n)-A004442(A312669(n))`
-/

namespace A315635.P13577546307303354250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A312669 n).toNat

end

end A315635.P13577546307303354250

namespace A315635

/-- `A017281(n)-A004442(A312669(n))` -/
def P13577546307303354250.Spec : Prop :=
  ∀ n, P13577546307303354250.a n = A315635 n

end A315635

/-! ## A315635.P15250996552179403029

`A005843(A008706(n))-A312669(n)`
-/

namespace A315635.P15250996552179403029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312669 n

end

end A315635.P15250996552179403029

namespace A315635

/-- `A005843(A008706(n))-A312669(n)` -/
def P15250996552179403029.Spec : Prop :=
  ∀ n, P15250996552179403029.a n = A315635 n

end A315635

/-! ## A315635.P662123053523384590

`A005843(A315690(n))-A008458(n)`
-/

namespace A315635.P662123053523384590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315690 n).toNat - A008458 n

end

end A315635.P662123053523384590

namespace A315635

/-- `A005843(A315690(n))-A008458(n)` -/
def P662123053523384590.Spec : Prop :=
  ∀ n, P662123053523384590.a n = A315635 n

end A315635

/-!
# A315636: Coordination sequence Gal.6.346.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315636, the canonical program `A315636.P1663351089148545457` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315636 has offset 0).

The definition of A315636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315636.P1663351089148545457

`abs(A008592(n)-A312668(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315636

/-- `abs(A008592(n)-A312668(n))` -/
def P1663351089148545457.Spec : Prop :=
  ∀ n, P1663351089148545457.a n = A315636 n

theorem P1663351089148545457.correct : P1663351089148545457.Spec := by
  intro n
  simp only [A315636]

end A315636

/-! ## A315636.P8172575259119526319

`2*A008706(n)-A312668(n)`
-/

namespace A315636.P8172575259119526319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312668 n

end

end A315636.P8172575259119526319

namespace A315636

/-- `2*A008706(n)-A312668(n)` -/
def P8172575259119526319.Spec : Prop :=
  ∀ n, P8172575259119526319.a n = A315636 n

end A315636

/-! ## A315636.P17823847943864883292

`2*A313498(n)-A008574(n)`
-/

namespace A315636.P17823847943864883292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313498 n - A008574 n

end

end A315636.P17823847943864883292

namespace A315636

/-- `2*A313498(n)-A008574(n)` -/
def P17823847943864883292.Spec : Prop :=
  ∀ n, P17823847943864883292.a n = A315636 n

end A315636

/-! ## A315636.P7752742403213289203

`A103517(A313498(n)-(2*n+1))`
-/

namespace A315636.P7752742403213289203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313498 n - (2 * n + 1 : ℤ)).toNat

end

end A315636.P7752742403213289203

namespace A315636

/-- `A103517(A313498(n)-(2*n+1))` -/
def P7752742403213289203.Spec : Prop :=
  ∀ n, P7752742403213289203.a n = A315636 n

end A315636

/-! ## A315636.P3430806947921169960

`A004275(A313498(n)-A004273(n))`
-/

namespace A315636.P3430806947921169960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313498 n - A004273 n).toNat

end

end A315636.P3430806947921169960

namespace A315636

/-- `A004275(A313498(n)-A004273(n))` -/
def P3430806947921169960.Spec : Prop :=
  ∀ n, P3430806947921169960.a n = A315636 n

end A315636

/-! ## A315636.P9646944447260785926

`A004277(A313498(n)-A004277(n))`
-/

namespace A315636.P9646944447260785926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313498 n - A004277 n).toNat

end

end A315636.P9646944447260785926

namespace A315636

/-- `A004277(A313498(n)-A004277(n))` -/
def P9646944447260785926.Spec : Prop :=
  ∀ n, P9646944447260785926.a n = A315636 n

end A315636

/-! ## A315636.P11678074034076946164

`A008458(n)+A008574(n)-A312668(n)`
-/

namespace A315636.P11678074034076946164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312668 n)

end

end A315636.P11678074034076946164

namespace A315636

/-- `A008458(n)+A008574(n)-A312668(n)` -/
def P11678074034076946164.Spec : Prop :=
  ∀ n, P11678074034076946164.a n = A315636 n

end A315636

/-! ## A315636.P5637856160573638727

`A004273(A313498(n)-n)-A004273(n)`
-/

namespace A315636.P5637856160573638727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313498 n - (n : ℤ)).toNat - A004273 n

end

end A315636.P5637856160573638727

namespace A315636

/-- `A004273(A313498(n)-n)-A004273(n)` -/
def P5637856160573638727.Spec : Prop :=
  ∀ n, P5637856160573638727.a n = A315636 n

end A315636

/-! ## A315636.P4547655520522247124

`A008574(n)+A005843(A313498(n)-A008574(n))`
-/

namespace A315636.P4547655520522247124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313498 n - A008574 n).toNat

end

end A315636.P4547655520522247124

namespace A315636

/-- `A008574(n)+A005843(A313498(n)-A008574(n))` -/
def P4547655520522247124.Spec : Prop :=
  ∀ n, P4547655520522247124.a n = A315636 n

end A315636

/-! ## A315636.P3605086141096003791

`A005843(A313498(n))-A008574(n)`
-/

namespace A315636.P3605086141096003791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313498 n).toNat - A008574 n

end

end A315636.P3605086141096003791

namespace A315636

/-- `A005843(A313498(n))-A008574(n)` -/
def P3605086141096003791.Spec : Prop :=
  ∀ n, P3605086141096003791.a n = A315636 n

end A315636

/-! ## A315636.P16823182405295179312

`A004275(A313498(n))-A004275(2*n)`
-/

namespace A315636.P16823182405295179312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313498 n).toNat - A004275 (2 * n)

end

end A315636.P16823182405295179312

namespace A315636

/-- `A004275(A313498(n))-A004275(2*n)` -/
def P16823182405295179312.Spec : Prop :=
  ∀ n, P16823182405295179312.a n = A315636 n

end A315636

/-! ## A315636.P2397212445488761744

`A005843(A313498(n))+n-A008706(n)`
-/

namespace A315636.P2397212445488761744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313498 n).toNat + ((n : ℤ) - A008706 n)

end

end A315636.P2397212445488761744

namespace A315636

/-- `A005843(A313498(n))+n-A008706(n)` -/
def P2397212445488761744.Spec : Prop :=
  ∀ n, P2397212445488761744.a n = A315636 n

end A315636

/-! ## A315636.P13165583319074908786

`A017281(n)-A004442(A312668(n))`
-/

namespace A315636.P13165583319074908786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A312668 n).toNat

end

end A315636.P13165583319074908786

namespace A315636

/-- `A017281(n)-A004442(A312668(n))` -/
def P13165583319074908786.Spec : Prop :=
  ∀ n, P13165583319074908786.a n = A315636 n

end A315636

/-! ## A315636.P6673217222162126635

`A005843(A008706(n))-A312668(n)`
-/

namespace A315636.P6673217222162126635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312668 n

end

end A315636.P6673217222162126635

namespace A315636

/-- `A005843(A008706(n))-A312668(n)` -/
def P6673217222162126635.Spec : Prop :=
  ∀ n, P6673217222162126635.a n = A315636 n

end A315636

/-! ## A315636.P10088275423425266178

`A000007(a(n-1))+A008592(n)-A312668(n)` with `a(0)=1`
-/

namespace A315636.P10088275423425266178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + (A008592 n - A312668 n)

end

end A315636.P10088275423425266178

namespace A315636

/-- `A000007(a(n-1))+A008592(n)-A312668(n)` -/
def P10088275423425266178.Spec : Prop :=
  ∀ n, P10088275423425266178.a n = A315636 n

end A315636

/-! ## A315636.P15584048799032249891

`A093545(A008458(n))-A312668(n)`
-/

namespace A315636.P15584048799032249891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A312668 n

end

end A315636.P15584048799032249891

namespace A315636

/-- `A093545(A008458(n))-A312668(n)` -/
def P15584048799032249891.Spec : Prop :=
  ∀ n, P15584048799032249891.a n = A315636 n

end A315636

/-!
# A315637: Coordination sequence Gal.6.352.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315637, the canonical program `A315637.P8693043612611580160` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315637 has offset 0).

The definition of A315637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315637.P8693043612611580160

`abs(A008592(n)-A312658(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315637

/-- `abs(A008592(n)-A312658(n))` -/
def P8693043612611580160.Spec : Prop :=
  ∀ n, P8693043612611580160.a n = A315637 n

theorem P8693043612611580160.correct : P8693043612611580160.Spec := by
  intro n
  simp only [A315637]

end A315637

/-! ## A315637.P863361512929350197

`2*A008706(n)-A312658(n)`
-/

namespace A315637.P863361512929350197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312658 n

end

end A315637.P863361512929350197

namespace A315637

/-- `2*A008706(n)-A312658(n)` -/
def P863361512929350197.Spec : Prop :=
  ∀ n, P863361512929350197.a n = A315637 n

end A315637

/-! ## A315637.P2558919369814259432

`2*A313506(n)-A008574(n)`
-/

namespace A315637.P2558919369814259432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313506 n - A008574 n

end

end A315637.P2558919369814259432

namespace A315637

/-- `2*A313506(n)-A008574(n)` -/
def P2558919369814259432.Spec : Prop :=
  ∀ n, P2558919369814259432.a n = A315637 n

end A315637

/-! ## A315637.P17174839146571705258

`2*A315691(n)-A008458(n)`
-/

namespace A315637.P17174839146571705258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315691 n - A008458 n

end

end A315637.P17174839146571705258

namespace A315637

/-- `2*A315691(n)-A008458(n)` -/
def P17174839146571705258.Spec : Prop :=
  ∀ n, P17174839146571705258.a n = A315637 n

end A315637

/-! ## A315637.P7561247439163085376

`A004275(A313506(n)-A004273(n))`
-/

namespace A315637.P7561247439163085376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313506 n - A004273 n).toNat

end

end A315637.P7561247439163085376

namespace A315637

/-- `A004275(A313506(n)-A004273(n))` -/
def P7561247439163085376.Spec : Prop :=
  ∀ n, P7561247439163085376.a n = A315637 n

end A315637

/-! ## A315637.P15387477733001978563

`A008458(n)-2*A004524(A081599(n))`
-/

namespace A315637.P15387477733001978563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004524 (A081599 n).toNat

end

end A315637.P15387477733001978563

namespace A315637

/-- `A008458(n)-2*A004524(A081599(n))` -/
def P15387477733001978563.Spec : Prop :=
  ∀ n, P15387477733001978563.a n = A315637 n

end A315637

/-! ## A315637.P4276587691095576624

`A008458(n)+A008574(n)-A312658(n)`
-/

namespace A315637.P4276587691095576624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312658 n)

end

end A315637.P4276587691095576624

namespace A315637

/-- `A008458(n)+A008574(n)-A312658(n)` -/
def P4276587691095576624.Spec : Prop :=
  ∀ n, P4276587691095576624.a n = A315637 n

end A315637

/-! ## A315637.P14007409468159041566

`A004273(A313506(n)-n)-A004273(n)`
-/

namespace A315637.P14007409468159041566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313506 n - (n : ℤ)).toNat - A004273 n

end

end A315637.P14007409468159041566

namespace A315637

/-- `A004273(A313506(n)-n)-A004273(n)` -/
def P14007409468159041566.Spec : Prop :=
  ∀ n, P14007409468159041566.a n = A315637 n

end A315637

/-! ## A315637.P10641351543875093584

`A315679(n)-A253262(n-A253262(n))`
-/

namespace A315637.P10641351543875093584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A253262 ((n : ℤ) - A253262 n).toNat

end

end A315637.P10641351543875093584

namespace A315637

/-- `A315679(n)-A253262(n-A253262(n))` -/
def P10641351543875093584.Spec : Prop :=
  ∀ n, P10641351543875093584.a n = A315637 n

end A315637

/-! ## A315637.P15944701242149926674

`∑{d}[A008592(n)-A312658(n), A000010(#)]`
-/

namespace A315637.P15944701242149926674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315637.P15944701242149926674

namespace A315637

/-- `∑{d}[A008592(n)-A312658(n), A000010(#)]` -/
def P15944701242149926674.Spec : Prop :=
  ∀ n, P15944701242149926674.a n = A315637 n

end A315637

/-! ## A315637.P8055967211531720524

`A008574(n)+A005843(A313506(n)-A008574(n))`
-/

namespace A315637.P8055967211531720524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313506 n - A008574 n).toNat

end

end A315637.P8055967211531720524

namespace A315637

/-- `A008574(n)+A005843(A313506(n)-A008574(n))` -/
def P8055967211531720524.Spec : Prop :=
  ∀ n, P8055967211531720524.a n = A315637 n

end A315637

/-! ## A315637.P4268741513882386628

`A008458(n)-A005843(A008458(n)-A315691(n))`
-/

namespace A315637.P4268741513882386628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315691 n).toNat

end

end A315637.P4268741513882386628

namespace A315637

/-- `A008458(n)-A005843(A008458(n)-A315691(n))` -/
def P4268741513882386628.Spec : Prop :=
  ∀ n, P4268741513882386628.a n = A315637 n

end A315637

/-! ## A315637.P5800307092385783015

`A005843(A313506(n))-A008574(n)`
-/

namespace A315637.P5800307092385783015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313506 n).toNat - A008574 n

end

end A315637.P5800307092385783015

namespace A315637

/-- `A005843(A313506(n))-A008574(n)` -/
def P5800307092385783015.Spec : Prop :=
  ∀ n, P5800307092385783015.a n = A315637 n

end A315637

/-! ## A315637.P468431691426113862

`A004275(A313506(n))-A004275(2*n)`
-/

namespace A315637.P468431691426113862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313506 n).toNat - A004275 (2 * n)

end

end A315637.P468431691426113862

namespace A315637

/-- `A004275(A313506(n))-A004275(2*n)` -/
def P468431691426113862.Spec : Prop :=
  ∀ n, P468431691426113862.a n = A315637 n

end A315637

/-! ## A315637.P1775082463214890192

`A005843(A008706(n))-A312658(n)`
-/

namespace A315637.P1775082463214890192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312658 n

end

end A315637.P1775082463214890192

namespace A315637

/-- `A005843(A008706(n))-A312658(n)` -/
def P1775082463214890192.Spec : Prop :=
  ∀ n, P1775082463214890192.a n = A315637 n

end A315637

/-! ## A315637.P6109803110788413703

`A005843(A315691(n))-A008458(n)`
-/

namespace A315637.P6109803110788413703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315691 n).toNat - A008458 n

end

end A315637.P6109803110788413703

namespace A315637

/-- `A005843(A315691(n))-A008458(n)` -/
def P6109803110788413703.Spec : Prop :=
  ∀ n, P6109803110788413703.a n = A315637 n

end A315637

/-!
# A315638: Coordination sequence Gal.6.355.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315638, the canonical program `A315638.P16650458169343485674` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315638 has offset 0).

The definition of A315638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315638.P16650458169343485674

`abs(A008592(n)-A312656(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315638

/-- `abs(A008592(n)-A312656(n))` -/
def P16650458169343485674.Spec : Prop :=
  ∀ n, P16650458169343485674.a n = A315638 n

theorem P16650458169343485674.correct : P16650458169343485674.Spec := by
  intro n
  simp only [A315638]

end A315638

/-! ## A315638.P5163467216494371693

`2*A008706(n)-A312656(n)`
-/

namespace A315638.P5163467216494371693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312656 n

end

end A315638.P5163467216494371693

namespace A315638

/-- `2*A008706(n)-A312656(n)` -/
def P5163467216494371693.Spec : Prop :=
  ∀ n, P5163467216494371693.a n = A315638 n

end A315638

/-! ## A315638.P2971787139461125905

`A008458(n)+A008574(n)-A312656(n)`
-/

namespace A315638.P2971787139461125905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312656 n)

end

end A315638.P2971787139461125905

namespace A315638

/-- `A008458(n)+A008574(n)-A312656(n)` -/
def P2971787139461125905.Spec : Prop :=
  ∀ n, P2971787139461125905.a n = A315638 n

end A315638

/-! ## A315638.P9881703426899764139

`2*A314117(n)-A310520(n)`
-/

namespace A315638.P9881703426899764139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314117 n - A310520 n

end

end A315638.P9881703426899764139

namespace A315638

/-- `2*A314117(n)-A310520(n)` -/
def P9881703426899764139.Spec : Prop :=
  ∀ n, P9881703426899764139.a n = A315638 n

end A315638

/-! ## A315638.P3663497296779582681

`2*A315692(n)-A008458(n)`
-/

namespace A315638.P3663497296779582681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315692 n - A008458 n

end

end A315638.P3663497296779582681

namespace A315638

/-- `2*A315692(n)-A008458(n)` -/
def P3663497296779582681.Spec : Prop :=
  ∀ n, P3663497296779582681.a n = A315638 n

end A315638

/-! ## A315638.P2153894562598751841

`A103517(A315692(n)-A016777(n))`
-/

namespace A315638.P2153894562598751841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315692 n - A016777 n).toNat

end

end A315638.P2153894562598751841

namespace A315638

/-- `A103517(A315692(n)-A016777(n))` -/
def P2153894562598751841.Spec : Prop :=
  ∀ n, P2153894562598751841.a n = A315638 n

end A315638

/-! ## A315638.P12258384681430711672

`A103517(A315692(n)%A016777(n))`
-/

namespace A315638.P12258384681430711672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315692 n) (A016777 n)).toNat

end

end A315638.P12258384681430711672

namespace A315638

/-- `A103517(A315692(n)%A016777(n))` -/
def P12258384681430711672.Spec : Prop :=
  ∀ n, P12258384681430711672.a n = A315638 n

end A315638

/-! ## A315638.P12123999776836942897

`A008458(n)-A005843(A008458(n)-A315692(n))`
-/

namespace A315638.P12123999776836942897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315692 n).toNat

end

end A315638.P12123999776836942897

namespace A315638

/-- `A008458(n)-A005843(A008458(n)-A315692(n))` -/
def P12123999776836942897.Spec : Prop :=
  ∀ n, P12123999776836942897.a n = A315638 n

end A315638

/-! ## A315638.P9841904801792524912

`A005843(A008706(n))-A312656(n)`
-/

namespace A315638.P9841904801792524912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312656 n

end

end A315638.P9841904801792524912

namespace A315638

/-- `A005843(A008706(n))-A312656(n)` -/
def P9841904801792524912.Spec : Prop :=
  ∀ n, P9841904801792524912.a n = A315638 n

end A315638

/-! ## A315638.P12688749667905833724

`A005843(A314117(n))-A310520(n)`
-/

namespace A315638.P12688749667905833724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314117 n).toNat - A310520 n

end

end A315638.P12688749667905833724

namespace A315638

/-- `A005843(A314117(n))-A310520(n)` -/
def P12688749667905833724.Spec : Prop :=
  ∀ n, P12688749667905833724.a n = A315638 n

end A315638

/-! ## A315638.P18309355423749233846

`A005843(A315692(n))-A008458(n)`
-/

namespace A315638.P18309355423749233846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315692 n).toNat - A008458 n

end

end A315638.P18309355423749233846

namespace A315638

/-- `A005843(A315692(n))-A008458(n)` -/
def P18309355423749233846.Spec : Prop :=
  ∀ n, P18309355423749233846.a n = A315638 n

end A315638

/-! ## A315638.P11859422035885363144

`A065502(A008458(n))-A312656(n)`
-/

namespace A315638.P11859422035885363144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312656 n

end

end A315638.P11859422035885363144

namespace A315638

/-- `A065502(A008458(n))-A312656(n)` -/
def P11859422035885363144.Spec : Prop :=
  ∀ n, P11859422035885363144.a n = A315638 n

end A315638

/-! ## A315638.P15077930198369331051

`A315756(2*n)-6*n`
-/

namespace A315638.P15077930198369331051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315756 (2 * n) - (6 * n : ℤ)

end

end A315638.P15077930198369331051

namespace A315638

/-- `A315756(2*n)-6*n` -/
def P15077930198369331051.Spec : Prop :=
  ∀ n, P15077930198369331051.a n = A315638 n

end A315638

/-!
# A315639: Coordination sequence Gal.4.74.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315639, the canonical program `A315639.P12274877796974282132` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315639 has offset 0).

The definition of A315639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315639.P17174249531306099014

`A219529(n)+round(sin(n%6))`
-/

namespace A315639.P17174249531306099014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A315639.P17174249531306099014

namespace A315639

/-- `A219529(n)+round(sin(n%6))` -/
def P17174249531306099014.Spec : Prop :=
  ∀ n, P17174249531306099014.a n = A315639 n

end A315639

/-! ## A315639.P12274877796974282132

`A219529(n)+A128834(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315639

/-- `A219529(n)+A128834(n)` -/
def P12274877796974282132.Spec : Prop :=
  ∀ n, P12274877796974282132.a n = A315639 n

theorem P12274877796974282132.correct : P12274877796974282132.Spec := by
  intro n
  simp only [A315639]

end A315639

/-! ## A315639.P17006091947001713279

`A301697(n)+A186809(n)`
-/

namespace A315639.P17006091947001713279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A186809 n

end

end A315639.P17006091947001713279

namespace A315639

/-- `A301697(n)+A186809(n)` -/
def P17006091947001713279.Spec : Prop :=
  ∀ n, P17006091947001713279.a n = A315639 n

end A315639

/-! ## A315639.P7150405843358751019

`abs(A008592(n)-A312655(n))`
-/

namespace A315639.P7150405843358751019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312655 n|

end

end A315639.P7150405843358751019

namespace A315639

/-- `abs(A008592(n)-A312655(n))` -/
def P7150405843358751019.Spec : Prop :=
  ∀ n, P7150405843358751019.a n = A315639 n

end A315639

/-! ## A315639.P11826885142801331963

`A219529(n)-A010892(n+2)`
-/

namespace A315639.P11826885142801331963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A010892 (n + 2)

end

end A315639.P11826885142801331963

namespace A315639

/-- `A219529(n)-A010892(n+2)` -/
def P11826885142801331963.Spec : Prop :=
  ∀ n, P11826885142801331963.a n = A315639 n

end A315639

/-! ## A315639.P7850734946972765659

`A128834(n)+A008576(2*n)`
-/

namespace A315639.P7850734946972765659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A008576 (2 * n)

end

end A315639.P7850734946972765659

namespace A315639

/-- `A128834(n)+A008576(2*n)` -/
def P7850734946972765659.Spec : Prop :=
  ∀ n, P7850734946972765659.a n = A315639 n

end A315639

/-! ## A315639.P11097353661527276927

`A310525(n)+2*A128834(n)`
-/

namespace A315639.P11097353661527276927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n + 2 * A128834 n

end

end A315639.P11097353661527276927

namespace A315639

/-- `A310525(n)+2*A128834(n)` -/
def P11097353661527276927.Spec : Prop :=
  ∀ n, P11097353661527276927.a n = A315639 n

theorem P11097353661527276927.correct : P11097353661527276927.Spec := by
  intro n
  simp only [A315639, Nat.add_sub_cancel, A315639.P11097353661527276927.a, A315639.P12274877796974282132.a, A128834, A128834.P16779687439637953687.a, A219529, A219529.P11562670573213702759.a, A310525, A310525.P5831325578290002764.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315639

/-! ## A315639.P12658729418450246673

`2*A313510(n)-A008574(n)`
-/

namespace A315639.P12658729418450246673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313510 n - A008574 n

end

end A315639.P12658729418450246673

namespace A315639

/-- `2*A313510(n)-A008574(n)` -/
def P12658729418450246673.Spec : Prop :=
  ∀ n, P12658729418450246673.a n = A315639 n

end A315639

/-! ## A315639.P3087719859521784800

`2*A315693(n)-A008458(n)`
-/

namespace A315639.P3087719859521784800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315693 n - A008458 n

end

end A315639.P3087719859521784800

namespace A315639

/-- `2*A315693(n)-A008458(n)` -/
def P3087719859521784800.Spec : Prop :=
  ∀ n, P3087719859521784800.a n = A315639 n

end A315639

/-! ## A315639.P12146240009585636647

`A008576(2*n)-A010892(n+2)`
-/

namespace A315639.P12146240009585636647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A010892 (n + 2)

end

end A315639.P12146240009585636647

namespace A315639

/-- `A008576(2*n)-A010892(n+2)` -/
def P12146240009585636647.Spec : Prop :=
  ∀ n, P12146240009585636647.a n = A315639 n

end A315639

/-! ## A315639.P2508393156257845466

`A004277(4*n-A047513(n+1))`
-/

namespace A315639.P2508393156257845466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((4 * n : ℤ) - A047513 (n + 1)).toNat

end

end A315639.P2508393156257845466

namespace A315639

/-- `A004277(4*n-A047513(n+1))` -/
def P2508393156257845466.Spec : Prop :=
  ∀ n, P2508393156257845466.a n = A315639 n

end A315639

/-! ## A315639.P17192075743822825144

`2*A312926(2*n)-A008458(2*n)`
-/

namespace A315639.P17192075743822825144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312926 (2 * n) - A008458 (2 * n)

end

end A315639.P17192075743822825144

namespace A315639

/-- `2*A312926(2*n)-A008458(2*n)` -/
def P17192075743822825144.Spec : Prop :=
  ∀ n, P17192075743822825144.a n = A315639 n

end A315639

/-! ## A315639.P6772147340381066545

`A219529(n)+A046978(A004396(2*n))`
-/

namespace A315639.P6772147340381066545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A046978 (A004396 (2 * n)).toNat

end

end A315639.P6772147340381066545

namespace A315639

/-- `A219529(n)+A046978(A004396(2*n))` -/
def P6772147340381066545.Spec : Prop :=
  ∀ n, P6772147340381066545.a n = A315639 n

end A315639

/-! ## A315639.P11475794439555296348

`A008458(n)+A008574(n)-A312655(n)`
-/

namespace A315639.P11475794439555296348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312655 n)

end

end A315639.P11475794439555296348

namespace A315639

/-- `A008458(n)+A008574(n)-A312655(n)` -/
def P11475794439555296348.Spec : Prop :=
  ∀ n, P11475794439555296348.a n = A315639 n

end A315639

/-! ## A315639.P15760652558565355305

`A315405(n)+∑[A022003(n)]`
-/

namespace A315639.P15760652558565355305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315639.P15760652558565355305

namespace A315639

/-- `A315405(n)+∑[A022003(n)]` -/
def P15760652558565355305.Spec : Prop :=
  ∀ n, P15760652558565355305.a n = A315639 n

end A315639

/-! ## A315639.P15967422138062873726

`A315405(n)+n-A004396(n)`
-/

namespace A315639.P15967422138062873726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n + ((n : ℤ) - A004396 n)

end

end A315639.P15967422138062873726

namespace A315639

/-- `A315405(n)+n-A004396(n)` -/
def P15967422138062873726.Spec : Prop :=
  ∀ n, P15967422138062873726.a n = A315639 n

end A315639

/-! ## A315639.P12602141010010304513

`A128834(n)+A004396(A022144(n))`
-/

namespace A315639.P12602141010010304513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A004396 (A022144 n).toNat

end

end A315639.P12602141010010304513

namespace A315639

/-- `A128834(n)+A004396(A022144(n))` -/
def P12602141010010304513.Spec : Prop :=
  ∀ n, P12602141010010304513.a n = A315639 n

end A315639

/-! ## A315639.P12422670807422312226

`A313717(2*n)-4*n`
-/

namespace A315639.P12422670807422312226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 (2 * n) - (4 * n : ℤ)

end

end A315639.P12422670807422312226

namespace A315639

/-- `A313717(2*n)-4*n` -/
def P12422670807422312226.Spec : Prop :=
  ∀ n, P12422670807422312226.a n = A315639 n

end A315639

/-! ## A315639.P15290749293298978875

`A004396(A314201(2*n))-A004396(2*n)`
-/

namespace A315639.P15290749293298978875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314201 (2 * n)).toNat - A004396 (2 * n)

end

end A315639.P15290749293298978875

namespace A315639

/-- `A004396(A314201(2*n))-A004396(2*n)` -/
def P15290749293298978875.Spec : Prop :=
  ∀ n, P15290749293298978875.a n = A315639 n

end A315639

/-!
# A315640: Coordination sequence Gal.6.556.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315640, there is no canonical definition to state claims against.
-/

/-! ## A315640.P12483424562089081720

`A315647(n)-A024326(A268042(n))`
-/

namespace A315640.P12483424562089081720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A024326 (A268042 n).toNat

end

end A315640.P12483424562089081720

/-! ## A315640.P14056541307330472527

`A315647(n)-A024326(A294816(n))`
-/

namespace A315640.P14056541307330472527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A024326 (A294816 n).toNat

end

end A315640.P14056541307330472527

/-! ## A315640.P9088217023191108796

`A315471(n)+A131531(A322780(n+1))`
-/

namespace A315640.P9088217023191108796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n + A131531 (A322780 (n + 1)).toNat

end

end A315640.P9088217023191108796

/-! ## A315640.P15733433909371563349

`A355739(A049297(n+1))+A029919(2*n)`
-/

namespace A315640.P15733433909371563349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A049297 (n + 1)).toNat + A029919 (2 * n)

end

end A315640.P15733433909371563349

/-! ## A315640.P12529868046623833668

`A175431(3*n+1)+A034883(A000108(n+1))`
-/

namespace A315640.P12529868046623833668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175431 (3 * n + 1) + A034883 (A000108 (n + 1)).toNat

end

end A315640.P12529868046623833668

/-!
# A315641: Coordination sequence Gal.6.208.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315641, the canonical program `A315641.P11101292632011724698` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315641 has offset 0).

The definition of A315641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315641.P11101292632011724698

`abs(A008592(n)-A312620(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315641

/-- `abs(A008592(n)-A312620(n))` -/
def P11101292632011724698.Spec : Prop :=
  ∀ n, P11101292632011724698.a n = A315641 n

theorem P11101292632011724698.correct : P11101292632011724698.Spec := by
  intro n
  simp only [A315641]

end A315641

/-! ## A315641.P9452168757509206104

`2*A008706(n)-A312620(n)`
-/

namespace A315641.P9452168757509206104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312620 n

end

end A315641.P9452168757509206104

namespace A315641

/-- `2*A008706(n)-A312620(n)` -/
def P9452168757509206104.Spec : Prop :=
  ∀ n, P9452168757509206104.a n = A315641 n

end A315641

/-! ## A315641.P6732088298426011536

`A314022(n)+A004396(A004525(n))`
-/

namespace A315641.P6732088298426011536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + A004396 (A004525 n).toNat

end

end A315641.P6732088298426011536

namespace A315641

/-- `A314022(n)+A004396(A004525(n))` -/
def P6732088298426011536.Spec : Prop :=
  ∀ n, P6732088298426011536.a n = A315641 n

end A315641

/-! ## A315641.P1185626803721826610

`A314028(n)+A004525(A004396(n))`
-/

namespace A315641.P1185626803721826610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314028 n + A004525 (A004396 n).toNat

end

end A315641.P1185626803721826610

namespace A315641

/-- `A314028(n)+A004525(A004396(n))` -/
def P1185626803721826610.Spec : Prop :=
  ∀ n, P1185626803721826610.a n = A315641 n

end A315641

/-! ## A315641.P16259662758811888824

`A315415(n)+A004525(n-A004396(n))`
-/

namespace A315641.P16259662758811888824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315641.P16259662758811888824

namespace A315641

/-- `A315415(n)+A004525(n-A004396(n))` -/
def P16259662758811888824.Spec : Prop :=
  ∀ n, P16259662758811888824.a n = A315641 n

end A315641

/-! ## A315641.P7661259056080415493

`A008458(n)+A008574(n)-A312620(n)`
-/

namespace A315641.P7661259056080415493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312620 n)

end

end A315641.P7661259056080415493

namespace A315641

/-- `A008458(n)+A008574(n)-A312620(n)` -/
def P7661259056080415493.Spec : Prop :=
  ∀ n, P7661259056080415493.a n = A315641 n

end A315641

/-! ## A315641.P8330500631053400163

`A312620(n)+A005843(A008706(n)-A312620(n))`
-/

namespace A315641.P8330500631053400163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A005843 (A008706 n - A312620 n).toNat

end

end A315641.P8330500631053400163

namespace A315641

/-- `A312620(n)+A005843(A008706(n)-A312620(n))` -/
def P8330500631053400163.Spec : Prop :=
  ∀ n, P8330500631053400163.a n = A315641 n

end A315641

/-! ## A315641.P8144473687710160983

`A314144(n)+A128834(n)`
-/

namespace A315641.P8144473687710160983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n + A128834 n

end

end A315641.P8144473687710160983

namespace A315641

/-- `A314144(n)+A128834(n)` -/
def P8144473687710160983.Spec : Prop :=
  ∀ n, P8144473687710160983.a n = A315641 n

end A315641

/-! ## A315641.P12447368265877083886

`A314144(n)-A010892(n+2)`
-/

namespace A315641.P12447368265877083886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - A010892 (n + 2)

end

end A315641.P12447368265877083886

namespace A315641

/-- `A314144(n)-A010892(n+2)` -/
def P12447368265877083886.Spec : Prop :=
  ∀ n, P12447368265877083886.a n = A315641 n

end A315641

/-! ## A315641.P5535035224611056710

`A315700(n)-A002264(A030118(n))`
-/

namespace A315641.P5535035224611056710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A002264 (A030118 n).toNat

end

end A315641.P5535035224611056710

namespace A315641

/-- `A315700(n)-A002264(A030118(n))` -/
def P5535035224611056710.Spec : Prop :=
  ∀ n, P5535035224611056710.a n = A315641 n

end A315641

/-! ## A315641.P12413500538663450365

`A004525(A004396(n))+A315700(n)-A004396(n)`
-/

namespace A315641.P12413500538663450365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315700 n - A004396 n)

end

end A315641.P12413500538663450365

namespace A315641

/-- `A004525(A004396(n))+A315700(n)-A004396(n)` -/
def P12413500538663450365.Spec : Prop :=
  ∀ n, P12413500538663450365.a n = A315641 n

end A315641

/-! ## A315641.P13069715898152139237

`A004396(A004525(n))+A315649(n)-A004525(n)`
-/

namespace A315641.P13069715898152139237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315649 n - A004525 n)

end

end A315641.P13069715898152139237

namespace A315641

/-- `A004396(A004525(n))+A315649(n)-A004525(n)` -/
def P13069715898152139237.Spec : Prop :=
  ∀ n, P13069715898152139237.a n = A315641 n

end A315641

/-! ## A315641.P5167870894001659403

`A005843(A008706(n))-A312620(n)`
-/

namespace A315641.P5167870894001659403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312620 n

end

end A315641.P5167870894001659403

namespace A315641

/-- `A005843(A008706(n))-A312620(n)` -/
def P5167870894001659403.Spec : Prop :=
  ∀ n, P5167870894001659403.a n = A315641 n

end A315641

/-! ## A315641.P13221442322014566491

`A004525(A315459(2*n))+A004525(n)`
-/

namespace A315641.P13221442322014566491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315459 (2 * n)).toNat + A004525 n

end

end A315641.P13221442322014566491

namespace A315641

/-- `A004525(A315459(2*n))+A004525(n)` -/
def P13221442322014566491.Spec : Prop :=
  ∀ n, P13221442322014566491.a n = A315641 n

end A315641

/-!
# A315642: Coordination sequence Gal.6.332.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315642, the canonical program `A315642.P10074898855002556229` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315642 has offset 0).

The definition of A315642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315642.P10074898855002556229

`abs(A008592(n)-A312606(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315642

/-- `abs(A008592(n)-A312606(n))` -/
def P10074898855002556229.Spec : Prop :=
  ∀ n, P10074898855002556229.a n = A315642 n

theorem P10074898855002556229.correct : P10074898855002556229.Spec := by
  intro n
  simp only [A315642]

end A315642

/-! ## A315642.P9342892868422499251

`2*A008706(n)-A312606(n)`
-/

namespace A315642.P9342892868422499251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312606 n

end

end A315642.P9342892868422499251

namespace A315642

/-- `2*A008706(n)-A312606(n)` -/
def P9342892868422499251.Spec : Prop :=
  ∀ n, P9342892868422499251.a n = A315642 n

end A315642

/-! ## A315642.P12568224818542457782

`2*A315470(n)-A315316(n)`
-/

namespace A315642.P12568224818542457782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A315316 n

end

end A315642.P12568224818542457782

namespace A315642

/-- `2*A315470(n)-A315316(n)` -/
def P12568224818542457782.Spec : Prop :=
  ∀ n, P12568224818542457782.a n = A315642 n

end A315642

/-! ## A315642.P2980189985514890034

`A135042(2*n+1)-A312606(n)`
-/

namespace A315642.P2980189985514890034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312606 n

end

end A315642.P2980189985514890034

namespace A315642

/-- `A135042(2*n+1)-A312606(n)` -/
def P2980189985514890034.Spec : Prop :=
  ∀ n, P2980189985514890034.a n = A315642 n

end A315642

/-! ## A315642.P10775215838561187018

`A184418(A008574(n))-A312606(n)`
-/

namespace A315642.P10775215838561187018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A312606 n

end

end A315642.P10775215838561187018

namespace A315642

/-- `A184418(A008574(n))-A312606(n)` -/
def P10775215838561187018.Spec : Prop :=
  ∀ n, P10775215838561187018.a n = A315642 n

end A315642

/-! ## A315642.P1632587877444560487

`A008458(n)+A008574(n)-A312606(n)`
-/

namespace A315642.P1632587877444560487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312606 n)

end

end A315642.P1632587877444560487

namespace A315642

/-- `A008458(n)+A008574(n)-A312606(n)` -/
def P1632587877444560487.Spec : Prop :=
  ∀ n, P1632587877444560487.a n = A315642 n

end A315642

/-! ## A315642.P17025457305355619249

`A008458(n)-A312606(n)%A004277(n)`
-/

namespace A315642.P17025457305355619249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A312606 n) (A004277 n)

end

end A315642.P17025457305355619249

namespace A315642

/-- `A008458(n)-A312606(n)%A004277(n)` -/
def P17025457305355619249.Spec : Prop :=
  ∀ n, P17025457305355619249.a n = A315642 n

end A315642

/-! ## A315642.P17306762455887155360

`(A315655(n)+A315638(n))/2`
-/

namespace A315642.P17306762455887155360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315655 n + A315638 n : ℚ) / 2

end

end A315642.P17306762455887155360

namespace A315642

/-- `(A315655(n)+A315638(n))/2` -/
def P17306762455887155360.Spec : Prop :=
  ∀ n, P17306762455887155360.a n = (A315642 n : ℚ)

end A315642

/-! ## A315642.P17446987793669340754

`2*A315692(n)-A315750(n)`
-/

namespace A315642.P17446987793669340754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315692 n - A315750 n

end

end A315642.P17446987793669340754

namespace A315642

/-- `2*A315692(n)-A315750(n)` -/
def P17446987793669340754.Spec : Prop :=
  ∀ n, P17446987793669340754.a n = A315642 n

end A315642

/-! ## A315642.P2018765524337476450

`A315750(n)-A005843(A315750(n)-A315692(n))`
-/

namespace A315642.P2018765524337476450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315750 n - A005843 (A315750 n - A315692 n).toNat

end

end A315642.P2018765524337476450

namespace A315642

/-- `A315750(n)-A005843(A315750(n)-A315692(n))` -/
def P2018765524337476450.Spec : Prop :=
  ∀ n, P2018765524337476450.a n = A315642 n

end A315642

/-! ## A315642.P3574703486023812855

`A005843(A008706(n))-A312606(n)`
-/

namespace A315642.P3574703486023812855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312606 n

end

end A315642.P3574703486023812855

namespace A315642

/-- `A005843(A008706(n))-A312606(n)` -/
def P3574703486023812855.Spec : Prop :=
  ∀ n, P3574703486023812855.a n = A315642 n

end A315642

/-! ## A315642.P14881617075828237402

`A004277(A008458(n)-n)-A312606(n)`
-/

namespace A315642.P14881617075828237402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008458 n - (n : ℤ)).toNat - A312606 n

end

end A315642.P14881617075828237402

namespace A315642

/-- `A004277(A008458(n)-n)-A312606(n)` -/
def P14881617075828237402.Spec : Prop :=
  ∀ n, P14881617075828237402.a n = A315642 n

end A315642

/-! ## A315642.P12131295564830647899

`A005843(A315470(n))-A315316(n)`
-/

namespace A315642.P12131295564830647899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315470 n).toNat - A315316 n

end

end A315642.P12131295564830647899

namespace A315642

/-- `A005843(A315470(n))-A315316(n)` -/
def P12131295564830647899.Spec : Prop :=
  ∀ n, P12131295564830647899.a n = A315642 n

end A315642

/-! ## A315642.P16097386609740131715

`A005843(A315692(n))-A315750(n)`
-/

namespace A315642.P16097386609740131715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315692 n).toNat - A315750 n

end

end A315642.P16097386609740131715

namespace A315642

/-- `A005843(A315692(n))-A315750(n)` -/
def P16097386609740131715.Spec : Prop :=
  ∀ n, P16097386609740131715.a n = A315642 n

end A315642

/-! ## A315642.P15015148317665061658

`A065502(A008458(n))-A312606(n)`
-/

namespace A315642.P15015148317665061658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312606 n

end

end A315642.P15015148317665061658

namespace A315642

/-- `A065502(A008458(n))-A312606(n)` -/
def P15015148317665061658.Spec : Prop :=
  ∀ n, P15015148317665061658.a n = A315642 n

end A315642

/-! ## A315642.P252534158550556689

`A313718(2*n)-4*n`
-/

namespace A315642.P252534158550556689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313718 (2 * n) - (4 * n : ℤ)

end

end A315642.P252534158550556689

namespace A315642

/-- `A313718(2*n)-4*n` -/
def P252534158550556689.Spec : Prop :=
  ∀ n, P252534158550556689.a n = A315642 n

end A315642

/-! ## A315642.P15554708219156619625

`2*A008574(2*n)-A313753(2*n)`
-/

namespace A315642.P15554708219156619625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313753 (2 * n)

end

end A315642.P15554708219156619625

namespace A315642

/-- `2*A008574(2*n)-A313753(2*n)` -/
def P15554708219156619625.Spec : Prop :=
  ∀ n, P15554708219156619625.a n = A315642 n

end A315642

/-! ## A315642.P16497688128246705939

`A315754(2*n)/(A157928(n+1)+1)`
-/

namespace A315642.P16497688128246705939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 (2 * n) : ℚ) / (A157928 (n + 1) + 1 : ℚ)

end

end A315642.P16497688128246705939

namespace A315642

/-- `A315754(2*n)/(A157928(n+1)+1)` -/
def P16497688128246705939.Spec : Prop :=
  ∀ n, P16497688128246705939.a n = (A315642 n : ℚ)

end A315642

/-! ## A315642.P13238768614284100718

`A315754(2*n)/gcd(2, A072994(2*(n+1)))`
-/

namespace A315642.P13238768614284100718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 (2 * n) : ℚ) / (Int.gcd 2 (A072994 (2 * (n + 1))) : ℚ)

end

end A315642.P13238768614284100718

namespace A315642

/-- `A315754(2*n)/gcd(2, A072994(2*(n+1)))` -/
def P13238768614284100718.Spec : Prop :=
  ∀ n, P13238768614284100718.a n = (A315642 n : ℚ)

end A315642

/-! ## A315642.P8824297106844012842

`A315754(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315642.P8824297106844012842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315642.P8824297106844012842

namespace A315642

/-- `A315754(2*n)/(4*n+2-A004277(2*n))` -/
def P8824297106844012842.Spec : Prop :=
  ∀ n, P8824297106844012842.a n = (A315642 n : ℚ)

end A315642

/-!
# A315643: Coordination sequence Gal.6.199.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315643, the canonical program `A315643.P3183973614738207625` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315643 has offset 0).

The definition of A315643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315643.P4392609136751930169

`abs(A008592(n)-A312562(n))`
-/

namespace A315643.P4392609136751930169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312562 n|

end

end A315643.P4392609136751930169

namespace A315643

/-- `abs(A008592(n)-A312562(n))` -/
def P4392609136751930169.Spec : Prop :=
  ∀ n, P4392609136751930169.a n = A315643 n

end A315643

/-! ## A315643.P3082228715178404756

`2*A008706(n)-A312562(n)`
-/

namespace A315643.P3082228715178404756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312562 n

end

end A315643.P3082228715178404756

namespace A315643

/-- `2*A008706(n)-A312562(n)` -/
def P3082228715178404756.Spec : Prop :=
  ∀ n, P3082228715178404756.a n = A315643 n

end A315643

/-! ## A315643.P14655254232234185239

`2*A313534(n)-A008574(n)`
-/

namespace A315643.P14655254232234185239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313534 n - A008574 n

end

end A315643.P14655254232234185239

namespace A315643

/-- `2*A313534(n)-A008574(n)` -/
def P14655254232234185239.Spec : Prop :=
  ∀ n, P14655254232234185239.a n = A315643 n

end A315643

/-! ## A315643.P3077203634222163337

`A004275(A313534(n)-A004273(n))`
-/

namespace A315643.P3077203634222163337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313534 n - A004273 n).toNat

end

end A315643.P3077203634222163337

namespace A315643

/-- `A004275(A313534(n)-A004273(n))` -/
def P3077203634222163337.Spec : Prop :=
  ∀ n, P3077203634222163337.a n = A315643 n

end A315643

/-! ## A315643.P9045794835955615107

`A008458(n)+A008574(n)-A312562(n)`
-/

namespace A315643.P9045794835955615107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312562 n)

end

end A315643.P9045794835955615107

namespace A315643

/-- `A008458(n)+A008574(n)-A312562(n)` -/
def P9045794835955615107.Spec : Prop :=
  ∀ n, P9045794835955615107.a n = A315643 n

end A315643

/-! ## A315643.P7418582795349904203

`A004273(A313534(n)-n)-A004273(n)`
-/

namespace A315643.P7418582795349904203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313534 n - (n : ℤ)).toNat - A004273 n

end

end A315643.P7418582795349904203

namespace A315643

/-- `A004273(A313534(n)-n)-A004273(n)` -/
def P7418582795349904203.Spec : Prop :=
  ∀ n, P7418582795349904203.a n = A315643 n

end A315643

/-! ## A315643.P2437858265623332543

`A008574(n)+A005843(A313534(n)-A008574(n))`
-/

namespace A315643.P2437858265623332543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313534 n - A008574 n).toNat

end

end A315643.P2437858265623332543

namespace A315643

/-- `A008574(n)+A005843(A313534(n)-A008574(n))` -/
def P2437858265623332543.Spec : Prop :=
  ∀ n, P2437858265623332543.a n = A315643 n

end A315643

/-! ## A315643.P17594784564126002427

`A315682(n)-Δ[A011864(n)]`
-/

namespace A315643.P17594784564126002427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315682 n - (f1 (n + 1) - f1 n)

end

end A315643.P17594784564126002427

namespace A315643

/-- `A315682(n)-Δ[A011864(n)]` -/
def P17594784564126002427.Spec : Prop :=
  ∀ n, P17594784564126002427.a n = A315643 n

theorem P17594784564126002427.correct : P17594784564126002427.Spec := by
  intro n
  simp only [A315643, Nat.add_sub_cancel, A315643.P17594784564126002427.f1, A315643.P17594784564126002427.a, A315643.P3183973614738207625.a, A004278, A004278.P6535296897428680900.a, A011864, A011864.P3547417513882699266.a, A017089, A017089.P13709942329986306669.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, A315682, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, A313788, A313788.P6713366544553221303.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A313543, A313543.P17775607979476667023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315643

/-! ## A315643.P3183973614738207625

`A004278(A017089(n)-A313899(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315643

/-- `A004278(A017089(n)-A313899(n))` -/
def P3183973614738207625.Spec : Prop :=
  ∀ n, P3183973614738207625.a n = A315643 n

theorem P3183973614738207625.correct : P3183973614738207625.Spec := by
  intro n
  simp only [A315643]

end A315643

/-! ## A315643.P13870969787443475587

`A315730(n)-Δ[2*A011864(n)]`
-/

namespace A315643.P13870969787443475587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 n - (f1 (n + 1) - f1 n)

end

end A315643.P13870969787443475587

namespace A315643

/-- `A315730(n)-Δ[2*A011864(n)]` -/
def P13870969787443475587.Spec : Prop :=
  ∀ n, P13870969787443475587.a n = A315643 n

theorem P13870969787443475587.correct : P13870969787443475587.Spec := by
  intro n
  simp only [A315643, Nat.add_sub_cancel, A315643.P13870969787443475587.f1, A315643.P13870969787443475587.a, A315643.P3183973614738207625.a, A004278, A004278.P6535296897428680900.a, A011864, A011864.P3547417513882699266.a, A017089, A017089.P13709942329986306669.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, A315730, A315730.P12339410108613406190.f1, A315730.P12339410108613406190.a, A313788, A313788.P6713366544553221303.a, A315682, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A313543, A313543.P17775607979476667023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315643

/-! ## A315643.P3928790391594278150

`A005843(A313534(n))-A008574(n)`
-/

namespace A315643.P3928790391594278150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313534 n).toNat - A008574 n

end

end A315643.P3928790391594278150

namespace A315643

/-- `A005843(A313534(n))-A008574(n)` -/
def P3928790391594278150.Spec : Prop :=
  ∀ n, P3928790391594278150.a n = A315643 n

end A315643

/-! ## A315643.P10764496615488855106

`A004275(A313534(n))-A004275(2*n)`
-/

namespace A315643.P10764496615488855106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313534 n).toNat - A004275 (2 * n)

end

end A315643.P10764496615488855106

namespace A315643

/-- `A004275(A313534(n))-A004275(2*n)` -/
def P10764496615488855106.Spec : Prop :=
  ∀ n, P10764496615488855106.a n = A315643 n

end A315643

/-! ## A315643.P10838083168467376526

`A005843(A008706(n))-A312562(n)`
-/

namespace A315643.P10838083168467376526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312562 n

end

end A315643.P10838083168467376526

namespace A315643

/-- `A005843(A008706(n))-A312562(n)` -/
def P10838083168467376526.Spec : Prop :=
  ∀ n, P10838083168467376526.a n = A315643 n

end A315643

/-!
# A315644: Coordination sequence Gal.6.325.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315644, the canonical program `A315644.P13515404179755767154` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315644 has offset 0).

The definition of A315644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315644.P13515404179755767154

`abs(10*n-A312561(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315644

/-- `abs(10*n-A312561(n))` -/
def P13515404179755767154.Spec : Prop :=
  ∀ n, P13515404179755767154.a n = A315644 n

theorem P13515404179755767154.correct : P13515404179755767154.Spec := by
  intro n
  simp only [A315644]

end A315644

/-! ## A315644.P1132483496389282188

`A310422(n)+2*A330025(n)`
-/

namespace A315644.P1132483496389282188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310422 n + 2 * A330025 n

end

end A315644.P1132483496389282188

namespace A315644

/-- `A310422(n)+2*A330025(n)` -/
def P1132483496389282188.Spec : Prop :=
  ∀ n, P1132483496389282188.a n = A315644 n

end A315644

/-! ## A315644.P4029905427463164424

`2*A008706(n)-A312561(n)`
-/

namespace A315644.P4029905427463164424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312561 n

end

end A315644.P4029905427463164424

namespace A315644

/-- `2*A008706(n)-A312561(n)` -/
def P4029905427463164424.Spec : Prop :=
  ∀ n, P4029905427463164424.a n = A315644 n

end A315644

/-! ## A315644.P17142394224667845367

`2*A313537(n)-A008574(n)`
-/

namespace A315644.P17142394224667845367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313537 n - A008574 n

end

end A315644.P17142394224667845367

namespace A315644

/-- `2*A313537(n)-A008574(n)` -/
def P17142394224667845367.Spec : Prop :=
  ∀ n, P17142394224667845367.a n = A315644 n

end A315644

/-! ## A315644.P3303409855214495958

`A004275(A313537(n)-A004273(n))`
-/

namespace A315644.P3303409855214495958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313537 n - A004273 n).toNat

end

end A315644.P3303409855214495958

namespace A315644

/-- `A004275(A313537(n)-A004273(n))` -/
def P3303409855214495958.Spec : Prop :=
  ∀ n, P3303409855214495958.a n = A315644 n

end A315644

/-! ## A315644.P15409676586949955156

`A008458(n)+A008574(n)-A312561(n)`
-/

namespace A315644.P15409676586949955156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312561 n)

end

end A315644.P15409676586949955156

namespace A315644

/-- `A008458(n)+A008574(n)-A312561(n)` -/
def P15409676586949955156.Spec : Prop :=
  ∀ n, P15409676586949955156.a n = A315644 n

end A315644

/-! ## A315644.P2183317186335542948

`A004273(A313537(n)-n)-A004273(n)`
-/

namespace A315644.P2183317186335542948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313537 n - (n : ℤ)).toNat - A004273 n

end

end A315644.P2183317186335542948

namespace A315644

/-- `A004273(A313537(n)-n)-A004273(n)` -/
def P2183317186335542948.Spec : Prop :=
  ∀ n, P2183317186335542948.a n = A315644 n

end A315644

/-! ## A315644.P11008383533489485371

`∑{d}[A008592(n)-A312561(n), A000010(#)]`
-/

namespace A315644.P11008383533489485371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315644.P11008383533489485371

namespace A315644

/-- `∑{d}[A008592(n)-A312561(n), A000010(#)]` -/
def P11008383533489485371.Spec : Prop :=
  ∀ n, P11008383533489485371.a n = A315644 n

end A315644

/-! ## A315644.P12497994525993311872

`A008574(n)+A005843(A313537(n)-A008574(n))`
-/

namespace A315644.P12497994525993311872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313537 n - A008574 n).toNat

end

end A315644.P12497994525993311872

namespace A315644

/-- `A008574(n)+A005843(A313537(n)-A008574(n))` -/
def P12497994525993311872.Spec : Prop :=
  ∀ n, P12497994525993311872.a n = A315644 n

end A315644

/-! ## A315644.P7214395126577760240

`A312561(n)+A005843(A008706(n)-A312561(n))`
-/

namespace A315644.P7214395126577760240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A005843 (A008706 n - A312561 n).toNat

end

end A315644.P7214395126577760240

namespace A315644

/-- `A312561(n)+A005843(A008706(n)-A312561(n))` -/
def P7214395126577760240.Spec : Prop :=
  ∀ n, P7214395126577760240.a n = A315644 n

end A315644

/-! ## A315644.P434002568075523145

`A330025(n)+A314049(n)`
-/

namespace A315644.P434002568075523145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314049 n

end

end A315644.P434002568075523145

namespace A315644

/-- `A330025(n)+A314049(n)` -/
def P434002568075523145.Spec : Prop :=
  ∀ n, P434002568075523145.a n = A315644 n

end A315644

/-! ## A315644.P16576530740860421007

`2*A315698(n)-A008458(n)`
-/

namespace A315644.P16576530740860421007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315698 n - A008458 n

end

end A315644.P16576530740860421007

namespace A315644

/-- `2*A315698(n)-A008458(n)` -/
def P16576530740860421007.Spec : Prop :=
  ∀ n, P16576530740860421007.a n = A315644 n

end A315644

/-! ## A315644.P2799688108895018321

`A005843(A313537(n))-A008574(n)`
-/

namespace A315644.P2799688108895018321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313537 n).toNat - A008574 n

end

end A315644.P2799688108895018321

namespace A315644

/-- `A005843(A313537(n))-A008574(n)` -/
def P2799688108895018321.Spec : Prop :=
  ∀ n, P2799688108895018321.a n = A315644 n

end A315644

/-! ## A315644.P15360768575474496184

`A004275(A313537(n))-A004275(2*n)`
-/

namespace A315644.P15360768575474496184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313537 n).toNat - A004275 (2 * n)

end

end A315644.P15360768575474496184

namespace A315644

/-- `A004275(A313537(n))-A004275(2*n)` -/
def P15360768575474496184.Spec : Prop :=
  ∀ n, P15360768575474496184.a n = A315644 n

end A315644

/-! ## A315644.P132496547277409972

`A005843(A313537(n))+n-A008706(n)`
-/

namespace A315644.P132496547277409972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313537 n).toNat + ((n : ℤ) - A008706 n)

end

end A315644.P132496547277409972

namespace A315644

/-- `A005843(A313537(n))+n-A008706(n)` -/
def P132496547277409972.Spec : Prop :=
  ∀ n, P132496547277409972.a n = A315644 n

end A315644

/-! ## A315644.P6436412864371959534

`A005843(A008706(n))-A312561(n)`
-/

namespace A315644.P6436412864371959534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312561 n

end

end A315644.P6436412864371959534

namespace A315644

/-- `A005843(A008706(n))-A312561(n)` -/
def P6436412864371959534.Spec : Prop :=
  ∀ n, P6436412864371959534.a n = A315644 n

end A315644

/-!
# A315645: Coordination sequence Gal.6.633.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315645, the canonical program `A315645.P11229265118516103077` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315645 has offset 0).

The definition of A315645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315645.P11229265118516103077

`A004278(A017005(n)-A311932(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315645

/-- `A004278(A017005(n)-A311932(n))` -/
def P11229265118516103077.Spec : Prop :=
  ∀ n, P11229265118516103077.a n = A315645 n

theorem P11229265118516103077.correct : P11229265118516103077.Spec := by
  intro n
  simp only [A315645]

end A315645

/-! ## A315645.P2015308391609995568

`A315396(n)+A004525(A008458(n)-A315396(n))`
-/

namespace A315645.P2015308391609995568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315396 n + A004525 (A008458 n - A315396 n).toNat

end

end A315645.P2015308391609995568

namespace A315645

/-- `A315396(n)+A004525(A008458(n)-A315396(n))` -/
def P2015308391609995568.Spec : Prop :=
  ∀ n, P2015308391609995568.a n = A315645 n

end A315645

/-! ## A315645.P17148784538303575902

`A315464(n)+A004525(A315464(n)-A315302(n))`
-/

namespace A315645.P17148784538303575902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315464 n + A004525 (A315464 n - A315302 n).toNat

end

end A315645.P17148784538303575902

namespace A315645

/-- `A315464(n)+A004525(A315464(n)-A315302(n))` -/
def P17148784538303575902.Spec : Prop :=
  ∀ n, P17148784538303575902.a n = A315645 n

end A315645

/-! ## A315645.P12989625648449365781

`2*A315699(n)-A008458(n)`
-/

namespace A315645.P12989625648449365781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315699 n - A008458 n

end

end A315645.P12989625648449365781

namespace A315645

/-- `2*A315699(n)-A008458(n)` -/
def P12989625648449365781.Spec : Prop :=
  ∀ n, P12989625648449365781.a n = A315645 n

end A315645

/-! ## A315645.P4865583648127898302

`A103517(A315699(n)-A016777(n))`
-/

namespace A315645.P4865583648127898302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315699 n - A016777 n).toNat

end

end A315645.P4865583648127898302

namespace A315645

/-- `A103517(A315699(n)-A016777(n))` -/
def P4865583648127898302.Spec : Prop :=
  ∀ n, P4865583648127898302.a n = A315645 n

end A315645

/-! ## A315645.P6491187522054233884

`A008458(n)-A005843(A008458(n)-A315699(n))`
-/

namespace A315645.P6491187522054233884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315699 n).toNat

end

end A315645.P6491187522054233884

namespace A315645

/-- `A008458(n)-A005843(A008458(n)-A315699(n))` -/
def P6491187522054233884.Spec : Prop :=
  ∀ n, P6491187522054233884.a n = A315645 n

end A315645

/-! ## A315645.P16473470962274930714

`A315733(n)-Δ[2*A011864(n)]`
-/

namespace A315645.P16473470962274930714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - (f1 (n + 1) - f1 n)

end

end A315645.P16473470962274930714

namespace A315645

/-- `A315733(n)-Δ[2*A011864(n)]` -/
def P16473470962274930714.Spec : Prop :=
  ∀ n, P16473470962274930714.a n = A315645 n

end A315645

/-! ## A315645.P10546890708254632954

`A315686(n)-Δ[A011864(n)]`
-/

namespace A315645.P10546890708254632954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315686 n - (f1 (n + 1) - f1 n)

end

end A315645.P10546890708254632954

namespace A315645

/-- `A315686(n)-Δ[A011864(n)]` -/
def P10546890708254632954.Spec : Prop :=
  ∀ n, P10546890708254632954.a n = A315645 n

end A315645

/-! ## A315645.P14630328165010710556

`abs(10*n-A312556(n))`
-/

namespace A315645.P14630328165010710556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312556 n|

end

end A315645.P14630328165010710556

namespace A315645

/-- `abs(10*n-A312556(n))` -/
def P14630328165010710556.Spec : Prop :=
  ∀ n, P14630328165010710556.a n = A315645 n

end A315645

/-! ## A315645.P17423410598683813702

`2*A008706(n)-A312556(n)`
-/

namespace A315645.P17423410598683813702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312556 n

end

end A315645.P17423410598683813702

namespace A315645

/-- `2*A008706(n)-A312556(n)` -/
def P17423410598683813702.Spec : Prop :=
  ∀ n, P17423410598683813702.a n = A315645 n

end A315645

/-! ## A315645.P8628594767411672210

`A005843(A008706(n))-A312556(n)`
-/

namespace A315645.P8628594767411672210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312556 n

end

end A315645.P8628594767411672210

namespace A315645

/-- `A005843(A008706(n))-A312556(n)` -/
def P8628594767411672210.Spec : Prop :=
  ∀ n, P8628594767411672210.a n = A315645 n

end A315645

/-! ## A315645.P7566524862578558007

`A008458(n)+A008574(n)-A312556(n)`
-/

namespace A315645.P7566524862578558007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312556 n)

end

end A315645.P7566524862578558007

namespace A315645

/-- `A008458(n)+A008574(n)-A312556(n)` -/
def P7566524862578558007.Spec : Prop :=
  ∀ n, P7566524862578558007.a n = A315645 n

end A315645

/-! ## A315645.P5919812526662187083

`A005843(A315699(n))-A008458(n)`
-/

namespace A315645.P5919812526662187083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315699 n).toNat - A008458 n

end

end A315645.P5919812526662187083

namespace A315645

/-- `A005843(A315699(n))-A008458(n)` -/
def P5919812526662187083.Spec : Prop :=
  ∀ n, P5919812526662187083.a n = A315645 n

end A315645

/-!
# A315646: Coordination sequence Gal.5.290.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315646, the canonical program `A315646.P17156318483534215033` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315646 has offset 0).

The definition of A315646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315646.P8597849390943898190

`abs(A008592(n)-A312555(n))`
-/

namespace A315646.P8597849390943898190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312555 n|

end

end A315646.P8597849390943898190

namespace A315646

/-- `abs(A008592(n)-A312555(n))` -/
def P8597849390943898190.Spec : Prop :=
  ∀ n, P8597849390943898190.a n = A315646 n

end A315646

/-! ## A315646.P17303218870414338239

`A315696(n)-Δ[A011862(n)]`
-/

namespace A315646.P17303218870414338239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n - (f1 (n + 1) - f1 n)

end

end A315646.P17303218870414338239

namespace A315646

/-- `A315696(n)-Δ[A011862(n)]` -/
def P17303218870414338239.Spec : Prop :=
  ∀ n, P17303218870414338239.a n = A315646 n

end A315646

/-! ## A315646.P7970308978510541656

`2*A008706(n)-A312555(n)`
-/

namespace A315646.P7970308978510541656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312555 n

end

end A315646.P7970308978510541656

namespace A315646

/-- `2*A008706(n)-A312555(n)` -/
def P7970308978510541656.Spec : Prop :=
  ∀ n, P7970308978510541656.a n = A315646 n

end A315646

/-! ## A315646.P17156318483534215033

`2*A313538(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315646

/-- `2*A313538(n)-A008574(n)` -/
def P17156318483534215033.Spec : Prop :=
  ∀ n, P17156318483534215033.a n = A315646 n

theorem P17156318483534215033.correct : P17156318483534215033.Spec := by
  intro n
  simp only [A315646]

end A315646

/-! ## A315646.P2149910880721423390

`A314021(n)+A004396(A004396(n))`
-/

namespace A315646.P2149910880721423390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n + A004396 (A004396 n).toNat

end

end A315646.P2149910880721423390

namespace A315646

/-- `A314021(n)+A004396(A004396(n))` -/
def P2149910880721423390.Spec : Prop :=
  ∀ n, P2149910880721423390.a n = A315646 n

end A315646

/-! ## A315646.P10960329488031336175

`A004275(A313538(n)-A004273(n))`
-/

namespace A315646.P10960329488031336175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313538 n - A004273 n).toNat

end

end A315646.P10960329488031336175

namespace A315646

/-- `A004275(A313538(n)-A004273(n))` -/
def P10960329488031336175.Spec : Prop :=
  ∀ n, P10960329488031336175.a n = A315646 n

end A315646

/-! ## A315646.P1405324669872225871

`A310369(n)+2*A004396(A004396(n))`
-/

namespace A315646.P1405324669872225871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n + 2 * A004396 (A004396 n).toNat

end

end A315646.P1405324669872225871

namespace A315646

/-- `A310369(n)+2*A004396(A004396(n))` -/
def P1405324669872225871.Spec : Prop :=
  ∀ n, P1405324669872225871.a n = A315646 n

theorem P1405324669872225871.correct : P1405324669872225871.Spec := by
  intro n
  simp only [A315646, Nat.add_sub_cancel, A315646.P1405324669872225871.a, A315646.P17156318483534215033.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A310369, A310369.P267865594556305958.a, A313538, A313538.P13622609119361302116.a, A312893, A312893.P922128372979076951.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315646

/-! ## A315646.P1144320444653330363

`A008458(n)+A008574(n)-A312555(n)`
-/

namespace A315646.P1144320444653330363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312555 n)

end

end A315646.P1144320444653330363

namespace A315646

/-- `A008458(n)+A008574(n)-A312555(n)` -/
def P1144320444653330363.Spec : Prop :=
  ∀ n, P1144320444653330363.a n = A315646 n

end A315646

/-! ## A315646.P18079638306071574294

`A004273(A313538(n)-n)-A004273(n)`
-/

namespace A315646.P18079638306071574294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313538 n - (n : ℤ)).toNat - A004273 n

end

end A315646.P18079638306071574294

namespace A315646

/-- `A004273(A313538(n)-n)-A004273(n)` -/
def P18079638306071574294.Spec : Prop :=
  ∀ n, P18079638306071574294.a n = A315646 n

end A315646

/-! ## A315646.P10017288385329309340

`A004396(A004396(n))+A315696(n)-A004396(n)`
-/

namespace A315646.P10017288385329309340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315696 n - A004396 n)

end

end A315646.P10017288385329309340

namespace A315646

/-- `A004396(A004396(n))+A315696(n)-A004396(n)` -/
def P10017288385329309340.Spec : Prop :=
  ∀ n, P10017288385329309340.a n = A315646 n

end A315646

/-! ## A315646.P5588331886666384895

`A008574(n)+A005843(A313538(n)-A008574(n))`
-/

namespace A315646.P5588331886666384895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313538 n - A008574 n).toNat

end

end A315646.P5588331886666384895

namespace A315646

/-- `A008574(n)+A005843(A313538(n)-A008574(n))` -/
def P5588331886666384895.Spec : Prop :=
  ∀ n, P5588331886666384895.a n = A315646 n

end A315646

/-! ## A315646.P6228246209348859355

`A312555(n)+A005843(A008706(n)-A312555(n))`
-/

namespace A315646.P6228246209348859355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n + A005843 (A008706 n - A312555 n).toNat

end

end A315646.P6228246209348859355

namespace A315646

/-- `A312555(n)+A005843(A008706(n)-A312555(n))` -/
def P6228246209348859355.Spec : Prop :=
  ∀ n, P6228246209348859355.a n = A315646 n

end A315646

/-! ## A315646.P16225081548828896866

`A315398(n)+A004525(A008458(n)-A315398(n))`
-/

namespace A315646.P16225081548828896866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A004525 (A008458 n - A315398 n).toNat

end

end A315646.P16225081548828896866

namespace A315646

/-- `A315398(n)+A004525(A008458(n)-A315398(n))` -/
def P16225081548828896866.Spec : Prop :=
  ∀ n, P16225081548828896866.a n = A315646 n

end A315646

/-! ## A315646.P17909830955147067975

`2*A315680(n)-A315727(n)`
-/

namespace A315646.P17909830955147067975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315680 n - A315727 n

end

end A315646.P17909830955147067975

namespace A315646

/-- `2*A315680(n)-A315727(n)` -/
def P17909830955147067975.Spec : Prop :=
  ∀ n, P17909830955147067975.a n = A315646 n

end A315646

/-! ## A315646.P3336030968453072311

`A151988(A313477(n))`
-/

namespace A315646.P3336030968453072311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A313477 n).toNat

end

end A315646.P3336030968453072311

namespace A315646

/-- `A151988(A313477(n))` -/
def P3336030968453072311.Spec : Prop :=
  ∀ n, P3336030968453072311.a n = A315646 n

end A315646

/-! ## A315646.P14249969805004293066

`A315757(n)-Δ[2*A011862(n)]`
-/

namespace A315646.P14249969805004293066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - (f1 (n + 1) - f1 n)

end

end A315646.P14249969805004293066

namespace A315646

/-- `A315757(n)-Δ[2*A011862(n)]` -/
def P14249969805004293066.Spec : Prop :=
  ∀ n, P14249969805004293066.a n = A315646 n

end A315646

/-! ## A315646.P9134366336013947204

`A005843(A313538(n))-A008574(n)`
-/

namespace A315646.P9134366336013947204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313538 n).toNat - A008574 n

end

end A315646.P9134366336013947204

namespace A315646

/-- `A005843(A313538(n))-A008574(n)` -/
def P9134366336013947204.Spec : Prop :=
  ∀ n, P9134366336013947204.a n = A315646 n

end A315646

/-! ## A315646.P11531486208814711361

`A004275(A313538(n))-A004275(2*n)`
-/

namespace A315646.P11531486208814711361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313538 n).toNat - A004275 (2 * n)

end

end A315646.P11531486208814711361

namespace A315646

/-- `A004275(A313538(n))-A004275(2*n)` -/
def P11531486208814711361.Spec : Prop :=
  ∀ n, P11531486208814711361.a n = A315646 n

end A315646

/-! ## A315646.P13647166231100294610

`A005843(A313538(n))+n-A008706(n)`
-/

namespace A315646.P13647166231100294610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313538 n).toNat + ((n : ℤ) - A008706 n)

end

end A315646.P13647166231100294610

namespace A315646

/-- `A005843(A313538(n))+n-A008706(n)` -/
def P13647166231100294610.Spec : Prop :=
  ∀ n, P13647166231100294610.a n = A315646 n

end A315646

/-! ## A315646.P18167672702799605542

`A005843(A008706(n))-A312555(n)`
-/

namespace A315646.P18167672702799605542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312555 n

end

end A315646.P18167672702799605542

namespace A315646

/-- `A005843(A008706(n))-A312555(n)` -/
def P18167672702799605542.Spec : Prop :=
  ∀ n, P18167672702799605542.a n = A315646 n

end A315646

/-!
# A315647: Coordination sequence Gal.4.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315647, the canonical program `A315647.P605135324631225855` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315647 has offset 0).

The definition of A315647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315647.P17953511296507013326

`A314193(n)+A175629(n)`
-/

namespace A315647.P17953511296507013326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 n + A175629 n

end

end A315647.P17953511296507013326

namespace A315647

/-- `A314193(n)+A175629(n)` -/
def P17953511296507013326.Spec : Prop :=
  ∀ n, P17953511296507013326.a n = A315647 n

end A315647

/-! ## A315647.P605135324631225855

`A315490(n)+A238470(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315647

/-- `A315490(n)+A238470(n)` -/
def P605135324631225855.Spec : Prop :=
  ∀ n, P605135324631225855.a n = A315647 n

theorem P605135324631225855.correct : P605135324631225855.Spec := by
  intro n
  simp only [A315647]

end A315647

/-! ## A315647.P4439653132382641348

`A315511(n)-A238468(n)`
-/

namespace A315647.P4439653132382641348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - A238468 n

end

end A315647.P4439653132382641348

namespace A315647

/-- `A315511(n)-A238468(n)` -/
def P4439653132382641348.Spec : Prop :=
  ∀ n, P4439653132382641348.a n = A315647 n

end A315647

/-! ## A315647.P4513495330678397838

`abs(A008592(n)-A312549(n))`
-/

namespace A315647.P4513495330678397838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312549 n|

end

end A315647.P4513495330678397838

namespace A315647

/-- `abs(A008592(n)-A312549(n))` -/
def P4513495330678397838.Spec : Prop :=
  ∀ n, P4513495330678397838.a n = A315647 n

end A315647

/-! ## A315647.P15333319754468882896

`abs(A008593(n)-A313982(n))`
-/

namespace A315647.P15333319754468882896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313982 n|

end

end A315647.P15333319754468882896

namespace A315647

/-- `abs(A008593(n)-A313982(n))` -/
def P15333319754468882896.Spec : Prop :=
  ∀ n, P15333319754468882896.a n = A315647 n

end A315647

/-! ## A315647.P10218146732295620332

`A315701(n)-Δ[A011860(n)]`
-/

namespace A315647.P10218146732295620332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - (f1 (n + 1) - f1 n)

end

end A315647.P10218146732295620332

namespace A315647

/-- `A315701(n)-Δ[A011860(n)]` -/
def P10218146732295620332.Spec : Prop :=
  ∀ n, P10218146732295620332.a n = A315647 n

end A315647

/-! ## A315647.P16222485566744303336

`A315339(n)+2*A238470(n)`
-/

namespace A315647.P16222485566744303336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n + 2 * A238470 n

end

end A315647.P16222485566744303336

namespace A315647

/-- `A315339(n)+2*A238470(n)` -/
def P16222485566744303336.Spec : Prop :=
  ∀ n, P16222485566744303336.a n = A315647 n

end A315647

/-! ## A315647.P5668809230422948878

`2*A008706(n)-A312549(n)`
-/

namespace A315647.P5668809230422948878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312549 n

end

end A315647.P5668809230422948878

namespace A315647

/-- `2*A008706(n)-A312549(n)` -/
def P5668809230422948878.Spec : Prop :=
  ∀ n, P5668809230422948878.a n = A315647 n

end A315647

/-! ## A315647.P11100684083660292854

`2*A315701(n)-A008458(n)`
-/

namespace A315647.P11100684083660292854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315701 n - A008458 n

end

end A315647.P11100684083660292854

namespace A315647

/-- `2*A315701(n)-A008458(n)` -/
def P11100684083660292854.Spec : Prop :=
  ∀ n, P11100684083660292854.a n = A315647 n

end A315647

/-! ## A315647.P13472361604102999612

`A008458(n)-Δ[2*A011860(n)]`
-/

namespace A315647.P13472361604102999612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315647.P13472361604102999612

namespace A315647

/-- `A008458(n)-Δ[2*A011860(n)]` -/
def P13472361604102999612.Spec : Prop :=
  ∀ n, P13472361604102999612.a n = A315647 n

end A315647

/-! ## A315647.P4251495639375618549

`A005843(A008706(n))-A312549(n)`
-/

namespace A315647.P4251495639375618549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312549 n

end

end A315647.P4251495639375618549

namespace A315647

/-- `A005843(A008706(n))-A312549(n)` -/
def P4251495639375618549.Spec : Prop :=
  ∀ n, P4251495639375618549.a n = A315647 n

end A315647

/-! ## A315647.P14074489054147652754

`A008458(n)+A008574(n)-A312549(n)`
-/

namespace A315647.P14074489054147652754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312549 n)

end

end A315647.P14074489054147652754

namespace A315647

/-- `A008458(n)+A008574(n)-A312549(n)` -/
def P14074489054147652754.Spec : Prop :=
  ∀ n, P14074489054147652754.a n = A315647 n

end A315647

/-!
# A315648: Coordination sequence Gal.6.593.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315648, there is no canonical definition to state claims against.
-/

/-! ## A315648.P6085372679350903956

`A309649(n+1)-A001222(A323269(n+1))`
-/

namespace A315648.P6085372679350903956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309649 (n + 1) - A001222 (A323269 (n + 1)).toNat

end

end A315648.P6085372679350903956

/-! ## A315648.P12619935221361732661

`A057640(2*n+1)+A049816(A377042(2*(n+2)))`
-/

namespace A315648.P12619935221361732661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (2 * n + 1) + A049816 (A377042 (2 * (n + 2))).toNat

end

end A315648.P12619935221361732661

/-!
# A315649: Coordination sequence Gal.6.626.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315649, the canonical program `A315649.P5476829177456958284` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315649 has offset 0).

The definition of A315649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315649.P5476829177456958284

`A314022(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315649

/-- `A314022(n)+A004525(n)` -/
def P5476829177456958284.Spec : Prop :=
  ∀ n, P5476829177456958284.a n = A315649 n

theorem P5476829177456958284.correct : P5476829177456958284.Spec := by
  intro n
  simp only [A315649]

end A315649

/-! ## A315649.P241744099851188012

`abs(A008592(n)-A312526(n))`
-/

namespace A315649.P241744099851188012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312526 n|

end

end A315649.P241744099851188012

namespace A315649

/-- `abs(A008592(n)-A312526(n))` -/
def P241744099851188012.Spec : Prop :=
  ∀ n, P241744099851188012.a n = A315649 n

end A315649

/-! ## A315649.P6477413263054295453

`A314022(n)+Δ[A054925(n)]`
-/

namespace A315649.P6477413263054295453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + (f1 (n + 1) - f1 n)

end

end A315649.P6477413263054295453

namespace A315649

/-- `A314022(n)+Δ[A054925(n)]` -/
def P6477413263054295453.Spec : Prop :=
  ∀ n, P6477413263054295453.a n = A315649 n

end A315649

/-! ## A315649.P3396124491111580249

`A315693(n)-Δ[A011865(n)]`
-/

namespace A315649.P3396124491111580249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - (f1 (n + 1) - f1 n)

end

end A315649.P3396124491111580249

namespace A315649

/-- `A315693(n)-Δ[A011865(n)]` -/
def P3396124491111580249.Spec : Prop :=
  ∀ n, P3396124491111580249.a n = A315649 n

end A315649

/-! ## A315649.P13783648315762361023

`2*A008706(n)-A312526(n)`
-/

namespace A315649.P13783648315762361023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312526 n

end

end A315649.P13783648315762361023

namespace A315649

/-- `2*A008706(n)-A312526(n)` -/
def P13783648315762361023.Spec : Prop :=
  ∀ n, P13783648315762361023.a n = A315649 n

end A315649

/-! ## A315649.P12590975994992952607

`A314043(n)+A004396(A004525(n))`
-/

namespace A315649.P12590975994992952607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314043 n + A004396 (A004525 n).toNat

end

end A315649.P12590975994992952607

namespace A315649

/-- `A314043(n)+A004396(A004525(n))` -/
def P12590975994992952607.Spec : Prop :=
  ∀ n, P12590975994992952607.a n = A315649 n

theorem P12590975994992952607.correct : P12590975994992952607.Spec := by
  intro n
  simp only [A315649, Nat.add_sub_cancel, A315649.P12590975994992952607.a, A315649.P5476829177456958284.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314022, A314022.P5759349393798454835.a, A314043, A314043.P3377773668893100370.a, A310393, A310393.P12744869705430097846.a, A310410, A310410.P13699142073105713236.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315649

/-! ## A315649.P17869418123486320032

`A314048(n)+A004525(A004396(n))`
-/

namespace A315649.P17869418123486320032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n + A004525 (A004396 n).toNat

end

end A315649.P17869418123486320032

namespace A315649

/-- `A314048(n)+A004525(A004396(n))` -/
def P17869418123486320032.Spec : Prop :=
  ∀ n, P17869418123486320032.a n = A315649 n

theorem P17869418123486320032.correct : P17869418123486320032.Spec := by
  intro n
  simp only [A315649, Nat.add_sub_cancel, A315649.P17869418123486320032.a, A315649.P5476829177456958284.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314022, A314022.P5759349393798454835.a, A314048, A314048.P6753169348479549005.a, A310393, A310393.P12744869705430097846.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315649

/-! ## A315649.P7170243758026012780

`A008458(n)-A004524(A030118(n))`
-/

namespace A315649.P7170243758026012780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004524 (A030118 n).toNat

end

end A315649.P7170243758026012780

namespace A315649

/-- `A008458(n)-A004524(A030118(n))` -/
def P7170243758026012780.Spec : Prop :=
  ∀ n, P7170243758026012780.a n = A315649 n

end A315649

/-! ## A315649.P18037229133647754206

`A315425(n)+A004396(n-A004525(n))`
-/

namespace A315649.P18037229133647754206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A315649.P18037229133647754206

namespace A315649

/-- `A315425(n)+A004396(n-A004525(n))` -/
def P18037229133647754206.Spec : Prop :=
  ∀ n, P18037229133647754206.a n = A315649 n

end A315649

/-! ## A315649.P2833749895064846296

`A008458(n)+A008574(n)-A312526(n)`
-/

namespace A315649.P2833749895064846296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312526 n)

end

end A315649.P2833749895064846296

namespace A315649

/-- `A008458(n)+A008574(n)-A312526(n)` -/
def P2833749895064846296.Spec : Prop :=
  ∀ n, P2833749895064846296.a n = A315649 n

end A315649

/-! ## A315649.P2959906248007615348

`∑{d}[A008592(n)-A312526(n), A000010(#)]`
-/

namespace A315649.P2959906248007615348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315649.P2959906248007615348

namespace A315649

/-- `∑{d}[A008592(n)-A312526(n), A000010(#)]` -/
def P2959906248007615348.Spec : Prop :=
  ∀ n, P2959906248007615348.a n = A315649 n

end A315649

/-! ## A315649.P15132616890924896122

`A004525(A004396(n))+A310393(n)+A004525(n)`
-/

namespace A315649.P15132616890924896122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A310393 n + A004525 n)

end

end A315649.P15132616890924896122

namespace A315649

/-- `A004525(A004396(n))+A310393(n)+A004525(n)` -/
def P15132616890924896122.Spec : Prop :=
  ∀ n, P15132616890924896122.a n = A315649 n

theorem P15132616890924896122.correct : P15132616890924896122.Spec := by
  intro n
  simp only [A315649, Nat.add_sub_cancel, A315649.P15132616890924896122.a, A315649.P5476829177456958284.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314022, A314022.P5759349393798454835.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315649

/-! ## A315649.P1073587333685025471

`A005843(A008706(n))-A312526(n)`
-/

namespace A315649.P1073587333685025471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312526 n

end

end A315649.P1073587333685025471

namespace A315649

/-- `A005843(A008706(n))-A312526(n)` -/
def P1073587333685025471.Spec : Prop :=
  ∀ n, P1073587333685025471.a n = A315649 n

end A315649

/-! ## A315649.P13011296283334275573

`A315479(n)-A014021(A017029(n))`
-/

namespace A315649.P13011296283334275573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A014021 (A017029 n).toNat

end

end A315649.P13011296283334275573

namespace A315649

/-- `A315479(n)-A014021(A017029(n))` -/
def P13011296283334275573.Spec : Prop :=
  ∀ n, P13011296283334275573.a n = A315649 n

end A315649

/-!
# A315650: Coordination sequence Gal.6.623.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315650, the canonical program `A315650.P2311187658339544642` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315650 has offset 0).

The definition of A315650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315650.P3154347794220511407

`abs(A008592(n)-A312507(n))`
-/

namespace A315650.P3154347794220511407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312507 n|

end

end A315650.P3154347794220511407

namespace A315650

/-- `abs(A008592(n)-A312507(n))` -/
def P3154347794220511407.Spec : Prop :=
  ∀ n, P3154347794220511407.a n = A315650 n

end A315650

/-! ## A315650.P1761695790161297651

`2*A008706(n)-A312507(n)`
-/

namespace A315650.P1761695790161297651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312507 n

end

end A315650.P1761695790161297651

namespace A315650

/-- `2*A008706(n)-A312507(n)` -/
def P1761695790161297651.Spec : Prop :=
  ∀ n, P1761695790161297651.a n = A315650 n

end A315650

/-! ## A315650.P2311187658339544642

`2*A313560(n)-A008574(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315650

/-- `2*A313560(n)-A008574(n)` -/
def P2311187658339544642.Spec : Prop :=
  ∀ n, P2311187658339544642.a n = A315650 n

theorem P2311187658339544642.correct : P2311187658339544642.Spec := by
  intro n
  simp only [A315650]

end A315650

/-! ## A315650.P4572962827622113498

`xor(1, A017281(n)-A312507(n))`
-/

namespace A315650.P4572962827622113498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A312507 n)

end

end A315650.P4572962827622113498

namespace A315650

/-- `xor(1, A017281(n)-A312507(n))` -/
def P4572962827622113498.Spec : Prop :=
  ∀ n, P4572962827622113498.a n = A315650 n

end A315650

/-! ## A315650.P6664836238546099049

`2*A312927(2*n)-A008458(2*n)`
-/

namespace A315650.P6664836238546099049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312927 (2 * n) - A008458 (2 * n)

end

end A315650.P6664836238546099049

namespace A315650

/-- `2*A312927(2*n)-A008458(2*n)` -/
def P6664836238546099049.Spec : Prop :=
  ∀ n, P6664836238546099049.a n = A315650 n

end A315650

/-! ## A315650.P4616404251221112474

`A004275(A313560(n)-A004273(n))`
-/

namespace A315650.P4616404251221112474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313560 n - A004273 n).toNat

end

end A315650.P4616404251221112474

namespace A315650

/-- `A004275(A313560(n)-A004273(n))` -/
def P4616404251221112474.Spec : Prop :=
  ∀ n, P4616404251221112474.a n = A315650 n

end A315650

/-! ## A315650.P13688727503317310881

`A008458(n)+A008574(n)-A312507(n)`
-/

namespace A315650.P13688727503317310881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312507 n)

end

end A315650.P13688727503317310881

namespace A315650

/-- `A008458(n)+A008574(n)-A312507(n)` -/
def P13688727503317310881.Spec : Prop :=
  ∀ n, P13688727503317310881.a n = A315650 n

end A315650

/-! ## A315650.P8848169380977640457

`A004273(A313560(n)-n)-A004273(n)`
-/

namespace A315650.P8848169380977640457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313560 n - (n : ℤ)).toNat - A004273 n

end

end A315650.P8848169380977640457

namespace A315650

/-- `A004273(A313560(n)-n)-A004273(n)` -/
def P8848169380977640457.Spec : Prop :=
  ∀ n, P8848169380977640457.a n = A315650 n

end A315650

/-! ## A315650.P2536037671960549035

`A008574(n)+A005843(A313560(n)-A008574(n))`
-/

namespace A315650.P2536037671960549035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313560 n - A008574 n).toNat

end

end A315650.P2536037671960549035

namespace A315650

/-- `A008574(n)+A005843(A313560(n)-A008574(n))` -/
def P2536037671960549035.Spec : Prop :=
  ∀ n, P2536037671960549035.a n = A315650 n

end A315650

/-! ## A315650.P568303545744288078

`A312507(n)+A005843(A008706(n)-A312507(n))`
-/

namespace A315650.P568303545744288078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n + A005843 (A008706 n - A312507 n).toNat

end

end A315650.P568303545744288078

namespace A315650

/-- `A312507(n)+A005843(A008706(n)-A312507(n))` -/
def P568303545744288078.Spec : Prop :=
  ∀ n, P568303545744288078.a n = A315650 n

end A315650

/-! ## A315650.P5622299991027725035

`A017281(n)-A004442(A312507(n))`
-/

namespace A315650.P5622299991027725035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A312507 n).toNat

end

end A315650.P5622299991027725035

namespace A315650

/-- `A017281(n)-A004442(A312507(n))` -/
def P5622299991027725035.Spec : Prop :=
  ∀ n, P5622299991027725035.a n = A315650 n

end A315650

/-! ## A315650.P7551163070093015041

`A005843(A313560(n))-A008574(n)`
-/

namespace A315650.P7551163070093015041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313560 n).toNat - A008574 n

end

end A315650.P7551163070093015041

namespace A315650

/-- `A005843(A313560(n))-A008574(n)` -/
def P7551163070093015041.Spec : Prop :=
  ∀ n, P7551163070093015041.a n = A315650 n

end A315650

/-! ## A315650.P1339642696443803053

`A004275(A313560(n))-A004275(2*n)`
-/

namespace A315650.P1339642696443803053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313560 n).toNat - A004275 (2 * n)

end

end A315650.P1339642696443803053

namespace A315650

/-- `A004275(A313560(n))-A004275(2*n)` -/
def P1339642696443803053.Spec : Prop :=
  ∀ n, P1339642696443803053.a n = A315650 n

end A315650

/-! ## A315650.P4676267936434550641

`A005843(A313560(n))+n-A008706(n)`
-/

namespace A315650.P4676267936434550641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313560 n).toNat + ((n : ℤ) - A008706 n)

end

end A315650.P4676267936434550641

namespace A315650

/-- `A005843(A313560(n))+n-A008706(n)` -/
def P4676267936434550641.Spec : Prop :=
  ∀ n, P4676267936434550641.a n = A315650 n

end A315650

/-! ## A315650.P11128946483471411175

`A005843(A008706(n))-A312507(n)`
-/

namespace A315650.P11128946483471411175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312507 n

end

end A315650.P11128946483471411175

namespace A315650

/-- `A005843(A008706(n))-A312507(n)` -/
def P11128946483471411175.Spec : Prop :=
  ∀ n, P11128946483471411175.a n = A315650 n

end A315650

/-! ## A315650.P18131224961283821262

`A310408(2*n)-4*n`
-/

namespace A315650.P18131224961283821262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310408 (2 * n) - (4 * n : ℤ)

end

end A315650.P18131224961283821262

namespace A315650

/-- `A310408(2*n)-4*n` -/
def P18131224961283821262.Spec : Prop :=
  ∀ n, P18131224961283821262.a n = A315650 n

end A315650

/-! ## A315650.P7768189134574561212

`2*A008574(2*n)-A315312(2*n)`
-/

namespace A315650.P7768189134574561212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315312 (2 * n)

end

end A315650.P7768189134574561212

namespace A315650

/-- `2*A008574(2*n)-A315312(2*n)` -/
def P7768189134574561212.Spec : Prop :=
  ∀ n, P7768189134574561212.a n = A315650 n

end A315650

/-!
# A315651: Coordination sequence Gal.5.303.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315651, the canonical program `A315651.P9904955794810219643` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315651 has offset 0).

The definition of A315651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315651.P9904955794810219643

`A314026(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315651

/-- `A314026(n)+A004525(n)` -/
def P9904955794810219643.Spec : Prop :=
  ∀ n, P9904955794810219643.a n = A315651 n

theorem P9904955794810219643.correct : P9904955794810219643.Spec := by
  intro n
  simp only [A315651]

end A315651

/-! ## A315651.P6968826426442777442

`abs(A008592(n)-A312506(n))`
-/

namespace A315651.P6968826426442777442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312506 n|

end

end A315651.P6968826426442777442

namespace A315651

/-- `abs(A008592(n)-A312506(n))` -/
def P6968826426442777442.Spec : Prop :=
  ∀ n, P6968826426442777442.a n = A315651 n

end A315651

/-! ## A315651.P554381317333700645

`A314026(n)+Δ[A054925(n)]`
-/

namespace A315651.P554381317333700645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + (f1 (n + 1) - f1 n)

end

end A315651.P554381317333700645

namespace A315651

/-- `A314026(n)+Δ[A054925(n)]` -/
def P554381317333700645.Spec : Prop :=
  ∀ n, P554381317333700645.a n = A315651 n

end A315651

/-! ## A315651.P14102296963479517223

`A315704(n)-Δ[A011861(n)]`
-/

namespace A315651.P14102296963479517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - (f1 (n + 1) - f1 n)

end

end A315651.P14102296963479517223

namespace A315651

/-- `A315704(n)-Δ[A011861(n)]` -/
def P14102296963479517223.Spec : Prop :=
  ∀ n, P14102296963479517223.a n = A315651 n

end A315651

/-! ## A315651.P1818416836385201852

`A310370(n)+2*A004525(n)`
-/

namespace A315651.P1818416836385201852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + 2 * A004525 n

end

end A315651.P1818416836385201852

namespace A315651

/-- `A310370(n)+2*A004525(n)` -/
def P1818416836385201852.Spec : Prop :=
  ∀ n, P1818416836385201852.a n = A315651 n

end A315651

/-! ## A315651.P763522540309196413

`2*A313561(n)-A008574(n)`
-/

namespace A315651.P763522540309196413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313561 n - A008574 n

end

end A315651.P763522540309196413

namespace A315651

/-- `2*A313561(n)-A008574(n)` -/
def P763522540309196413.Spec : Prop :=
  ∀ n, P763522540309196413.a n = A315651 n

end A315651

/-! ## A315651.P3044696009579655162

`2*A315704(n)-A008458(n)`
-/

namespace A315651.P3044696009579655162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315704 n - A008458 n

end

end A315651.P3044696009579655162

namespace A315651

/-- `2*A315704(n)-A008458(n)` -/
def P3044696009579655162.Spec : Prop :=
  ∀ n, P3044696009579655162.a n = A315651 n

end A315651

/-! ## A315651.P12960442711475225975

`A310370(n)+Δ[2*A054925(n)]`
-/

namespace A315651.P12960442711475225975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + (f1 (n + 1) - f1 n)

end

end A315651.P12960442711475225975

namespace A315651

/-- `A310370(n)+Δ[2*A054925(n)]` -/
def P12960442711475225975.Spec : Prop :=
  ∀ n, P12960442711475225975.a n = A315651 n

end A315651

/-! ## A315651.P12992319329040956650

`A008458(n)-Δ[2*A011861(n)]`
-/

namespace A315651.P12992319329040956650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315651.P12992319329040956650

namespace A315651

/-- `A008458(n)-Δ[2*A011861(n)]` -/
def P12992319329040956650.Spec : Prop :=
  ∀ n, P12992319329040956650.a n = A315651 n

end A315651

/-! ## A315651.P2437408355981757793

`A314056(n)+A004525(A004525(n))`
-/

namespace A315651.P2437408355981757793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A004525 (A004525 n).toNat

end

end A315651.P2437408355981757793

namespace A315651

/-- `A314056(n)+A004525(A004525(n))` -/
def P2437408355981757793.Spec : Prop :=
  ∀ n, P2437408355981757793.a n = A315651 n

theorem P2437408355981757793.correct : P2437408355981757793.Spec := by
  intro n
  simp only [A315651, Nat.add_sub_cancel, A315651.P2437408355981757793.a, A315651.P9904955794810219643.a, A004525, A004525.P4158271949796742323.a, A314026, A314026.P8836136784884511113.a, A314056, A314056.P914995745377123050.a, A310397, A310397.P3562784380377388061.a, A312943, A312943.P15149972139158582154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315651

/-! ## A315651.P6842993457853778140

`A008458(n)-A201629(A201629(n)/2)`
-/

namespace A315651.P6842993457853778140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A315651.P6842993457853778140

namespace A315651

/-- `A008458(n)-A201629(A201629(n)/2)` -/
def P6842993457853778140.Spec : Prop :=
  ∀ n, P6842993457853778140.a n = A315651 n

end A315651

/-! ## A315651.P11474108176309264039

`A314161(n)+A046978(A046978(n)+n)`
-/

namespace A315651.P11474108176309264039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315651.P11474108176309264039

namespace A315651

/-- `A314161(n)+A046978(A046978(n)+n)` -/
def P11474108176309264039.Spec : Prop :=
  ∀ n, P11474108176309264039.a n = A315651 n

end A315651

/-! ## A315651.P14823204729862128976

`A008458(n)+A008574(n)-A312506(n)`
-/

namespace A315651.P14823204729862128976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312506 n)

end

end A315651.P14823204729862128976

namespace A315651

/-- `A008458(n)+A008574(n)-A312506(n)` -/
def P14823204729862128976.Spec : Prop :=
  ∀ n, P14823204729862128976.a n = A315651 n

end A315651

/-! ## A315651.P13922165113318785578

`A008458(n)-A201629(n-A004525(n))`
-/

namespace A315651.P13922165113318785578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A201629 ((n : ℤ) - A004525 n).toNat

end

end A315651.P13922165113318785578

namespace A315651

/-- `A008458(n)-A201629(n-A004525(n))` -/
def P13922165113318785578.Spec : Prop :=
  ∀ n, P13922165113318785578.a n = A315651 n

end A315651

/-! ## A315651.P3611974543306504547

`A004525(n)+A310397(n)+A004525(A004525(n))`
-/

namespace A315651.P3611974543306504547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310397 n + A004525 (A004525 n).toNat)

end

end A315651.P3611974543306504547

namespace A315651

/-- `A004525(n)+A310397(n)+A004525(A004525(n))` -/
def P3611974543306504547.Spec : Prop :=
  ∀ n, P3611974543306504547.a n = A315651 n

theorem P3611974543306504547.correct : P3611974543306504547.Spec := by
  intro n
  simp only [A315651, Nat.add_sub_cancel, A315651.P3611974543306504547.a, A315651.P9904955794810219643.a, A004525, A004525.P4158271949796742323.a, A310397, A310397.P3562784380377388061.a, A314026, A314026.P8836136784884511113.a, A312943, A312943.P15149972139158582154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315651

/-! ## A315651.P13764094740281609069

`A092533(A090678(n)+A017401(n))`
-/

namespace A315651.P13764094740281609069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A090678 n + A017401 n).toNat

end

end A315651.P13764094740281609069

namespace A315651

/-- `A092533(A090678(n)+A017401(n))` -/
def P13764094740281609069.Spec : Prop :=
  ∀ n, P13764094740281609069.a n = A315651 n

end A315651

/-! ## A315651.P3268056119726175990

`A092533(A017401(n)+1-A038189(n))`
-/

namespace A315651.P3268056119726175990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A017401 n + (1 - A038189 n)).toNat

end

end A315651.P3268056119726175990

namespace A315651

/-- `A092533(A017401(n)+1-A038189(n))` -/
def P3268056119726175990.Spec : Prop :=
  ∀ n, P3268056119726175990.a n = A315651 n

end A315651

/-! ## A315651.P9551624239853740015

`A092533(1-(A038189(n)-A017401(n)))`
-/

namespace A315651.P9551624239853740015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (1 - (A038189 n - A017401 n)).toNat

end

end A315651.P9551624239853740015

namespace A315651

/-- `A092533(1-(A038189(n)-A017401(n)))` -/
def P9551624239853740015.Spec : Prop :=
  ∀ n, P9551624239853740015.a n = A315651 n

end A315651

/-!
# A315652: Coordination sequence Gal.6.664.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315652, there is no canonical definition to state claims against.
-/

/-! ## A315652.P10913102863652704822

`xor(A107279(A007598(n)), A315730(n))`
-/

namespace A315652.P10913102863652704822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107279 (A007598 n).toNat) (A315730 n)

end

end A315652.P10913102863652704822

/-! ## A315652.P6105050570199771649

`A315425(n)+A001221(A000238(n+1))`
-/

namespace A315652.P6105050570199771649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315425 n + A001221 (A000238 (n + 1)).toNat

end

end A315652.P6105050570199771649

/-! ## A315652.P589315945902837771

`A314027(n)+A001221(A097613(n+1))`
-/

namespace A315652.P589315945902837771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314027 n + A001221 (A097613 (n + 1)).toNat

end

end A315652.P589315945902837771

/-! ## A315652.P13137032432792941684

`A272872(2*n+2)-A054977(A140429(n))`
-/

namespace A315652.P13137032432792941684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (2 * n + 2) - A054977 (A140429 n).toNat

end

end A315652.P13137032432792941684

/-! ## A315652.P8133845778089566933

`A285716(A370129(2*(n+2)))+A016861(n)`
-/

namespace A315652.P8133845778089566933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (A370129 (2 * (n + 2))).toNat + A016861 n

end

end A315652.P8133845778089566933

/-!
# A315653: Coordination sequence Gal.5.305.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315653, the canonical program `A315653.P10545093397592680194` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315653 has offset 0).

The definition of A315653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315653.P10545093397592680194

`abs(A008592(n)-A312484(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315653

/-- `abs(A008592(n)-A312484(n))` -/
def P10545093397592680194.Spec : Prop :=
  ∀ n, P10545093397592680194.a n = A315653 n

theorem P10545093397592680194.correct : P10545093397592680194.Spec := by
  intro n
  simp only [A315653]

end A315653

/-! ## A315653.P6549327885984800045

`2*A008706(n)-A312484(n)`
-/

namespace A315653.P6549327885984800045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312484 n

end

end A315653.P6549327885984800045

namespace A315653

/-- `2*A008706(n)-A312484(n)` -/
def P6549327885984800045.Spec : Prop :=
  ∀ n, P6549327885984800045.a n = A315653 n

end A315653

/-! ## A315653.P11612136001815871222

`A008458(n)-Δ[2*A011862(n)]`
-/

namespace A315653.P11612136001815871222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315653.P11612136001815871222

namespace A315653

/-- `A008458(n)-Δ[2*A011862(n)]` -/
def P11612136001815871222.Spec : Prop :=
  ∀ n, P11612136001815871222.a n = A315653 n

end A315653

/-! ## A315653.P14404953034474852578

`A008486(2*n)-Δ[2*A011862(n)]`
-/

namespace A315653.P14404953034474852578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A315653.P14404953034474852578

namespace A315653

/-- `A008486(2*n)-Δ[2*A011862(n)]` -/
def P14404953034474852578.Spec : Prop :=
  ∀ n, P14404953034474852578.a n = A315653 n

end A315653

/-! ## A315653.P15501575394916311113

`A314034(n)+A004396(A004396(n))`
-/

namespace A315653.P15501575394916311113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314034 n + A004396 (A004396 n).toNat

end

end A315653.P15501575394916311113

namespace A315653

/-- `A314034(n)+A004396(A004396(n))` -/
def P15501575394916311113.Spec : Prop :=
  ∀ n, P15501575394916311113.a n = A315653 n

end A315653

/-! ## A315653.P14209256854400305559

`A008458(n)-A005843(Δ[A011862(n)])`
-/

namespace A315653.P14209256854400305559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (f1 (n + 1) - f1 n).toNat

end

end A315653.P14209256854400305559

namespace A315653

/-- `A008458(n)-A005843(Δ[A011862(n)])` -/
def P14209256854400305559.Spec : Prop :=
  ∀ n, P14209256854400305559.a n = A315653 n

end A315653

/-! ## A315653.P1088727446756556372

`A298024(n)+2*A004396(A004396(n))`
-/

namespace A315653.P1088727446756556372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + 2 * A004396 (A004396 n).toNat

end

end A315653.P1088727446756556372

namespace A315653

/-- `A298024(n)+2*A004396(A004396(n))` -/
def P1088727446756556372.Spec : Prop :=
  ∀ n, P1088727446756556372.a n = A315653 n

end A315653

/-! ## A315653.P4342240011864096416

`A315427(n)+A004396(n-A004396(n))`
-/

namespace A315653.P4342240011864096416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315653.P4342240011864096416

namespace A315653

/-- `A315427(n)+A004396(n-A004396(n))` -/
def P4342240011864096416.Spec : Prop :=
  ∀ n, P4342240011864096416.a n = A315653 n

end A315653

/-! ## A315653.P2103745050019434941

`A008458(n)+A008574(n)-A312484(n)`
-/

namespace A315653.P2103745050019434941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312484 n)

end

end A315653.P2103745050019434941

namespace A315653

/-- `A008458(n)+A008574(n)-A312484(n)` -/
def P2103745050019434941.Spec : Prop :=
  ∀ n, P2103745050019434941.a n = A315653 n

end A315653

/-! ## A315653.P3002286175999765024

`2*A000007(n)+A008592(n)-A312484(n)`
-/

namespace A315653.P3002286175999765024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n + (A008592 n - A312484 n)

end

end A315653.P3002286175999765024

namespace A315653

/-- `2*A000007(n)+A008592(n)-A312484(n)` -/
def P3002286175999765024.Spec : Prop :=
  ∀ n, P3002286175999765024.a n = A315653 n

end A315653

/-! ## A315653.P54721810746129751

`A315706(n)-Δ[A011862(n)]`
-/

namespace A315653.P54721810746129751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - (f1 (n + 1) - f1 n)

end

end A315653.P54721810746129751

namespace A315653

/-- `A315706(n)-Δ[A011862(n)]` -/
def P54721810746129751.Spec : Prop :=
  ∀ n, P54721810746129751.a n = A315653 n

end A315653

/-! ## A315653.P5999569995112851652

`2*A315706(n)-A008458(n)`
-/

namespace A315653.P5999569995112851652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315706 n - A008458 n

end

end A315653.P5999569995112851652

namespace A315653

/-- `2*A315706(n)-A008458(n)` -/
def P5999569995112851652.Spec : Prop :=
  ∀ n, P5999569995112851652.a n = A315653 n

end A315653

/-! ## A315653.P16701492028569967338

`A004396(A004396(n))+A315706(n)-A004396(n)`
-/

namespace A315653.P16701492028569967338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315706 n - A004396 n)

end

end A315653.P16701492028569967338

namespace A315653

/-- `A004396(A004396(n))+A315706(n)-A004396(n)` -/
def P16701492028569967338.Spec : Prop :=
  ∀ n, P16701492028569967338.a n = A315653 n

end A315653

/-! ## A315653.P11361064742510490060

`A008458(n)-A005843(A008458(n)-A315706(n))`
-/

namespace A315653.P11361064742510490060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315706 n).toNat

end

end A315653.P11361064742510490060

namespace A315653

/-- `A008458(n)-A005843(A008458(n)-A315706(n))` -/
def P11361064742510490060.Spec : Prop :=
  ∀ n, P11361064742510490060.a n = A315653 n

end A315653

/-! ## A315653.P12638130448831700772

`A005843(A008706(n))-A312484(n)`
-/

namespace A315653.P12638130448831700772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312484 n

end

end A315653.P12638130448831700772

namespace A315653

/-- `A005843(A008706(n))-A312484(n)` -/
def P12638130448831700772.Spec : Prop :=
  ∀ n, P12638130448831700772.a n = A315653 n

end A315653

/-! ## A315653.P516966009347908995

`A005843(A315706(n))-A008458(n)`
-/

namespace A315653.P516966009347908995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315706 n).toNat - A008458 n

end

end A315653.P516966009347908995

namespace A315653

/-- `A005843(A315706(n))-A008458(n)` -/
def P516966009347908995.Spec : Prop :=
  ∀ n, P516966009347908995.a n = A315653 n

end A315653

/-! ## A315653.P15566624679940798775

`A315757(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315653.P15566624679940798775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315653.P15566624679940798775

namespace A315653

/-- `A315757(2*n)+A008458(n+1)-(12*n+6)` -/
def P15566624679940798775.Spec : Prop :=
  ∀ n, P15566624679940798775.a n = A315653 n

end A315653

/-! ## A315653.P5053591650749663911

`A004396(A313683(2*n))-A004396(n)`
-/

namespace A315653.P5053591650749663911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313683 (2 * n)).toNat - A004396 n

end

end A315653.P5053591650749663911

namespace A315653

/-- `A004396(A313683(2*n))-A004396(n)` -/
def P5053591650749663911.Spec : Prop :=
  ∀ n, P5053591650749663911.a n = A315653 n

end A315653

/-!
# A315654: Coordination sequence Gal.3.49.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315654, the canonical program `A315654.P465217877465462128` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315654 has offset 0).

The definition of A315654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315654.P17100966481436057501

`A022144(n)-2*comp[Δ[lcm(3, n)]]`
-/

namespace A315654.P17100966481436057501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A315654.P17100966481436057501

namespace A315654

/-- `A022144(n)-2*comp[Δ[lcm(3, n)]]` -/
def P17100966481436057501.Spec : Prop :=
  ∀ n, P17100966481436057501.a n = A315654 n

end A315654

/-! ## A315654.P465217877465462128

`A047326(A008574(n)+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315654

/-- `A047326(A008574(n)+1)` -/
def P465217877465462128.Spec : Prop :=
  ∀ n, P465217877465462128.a n = A315654 n

theorem P465217877465462128.correct : P465217877465462128.Spec := by
  intro n
  simp only [A315654]

end A315654

/-! ## A315654.P14425591796694344073

`A004277(A047299(2*n+1))`
-/

namespace A315654.P14425591796694344073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047299 (2 * n + 1)).toNat

end

end A315654.P14425591796694344073

namespace A315654

/-- `A004277(A047299(2*n+1))` -/
def P14425591796694344073.Spec : Prop :=
  ∀ n, P14425591796694344073.a n = A315654 n

end A315654

/-! ## A315654.P6128252723218844568

`A047326(A008486(n)+1+n)`
-/

namespace A315654.P6128252723218844568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (A008486 n + 1 + (n : ℤ)).toNat

end

end A315654.P6128252723218844568

namespace A315654

/-- `A047326(A008486(n)+1+n)` -/
def P6128252723218844568.Spec : Prop :=
  ∀ n, P6128252723218844568.a n = A315654 n

end A315654

/-! ## A315654.P359860111874341210

`A022144(n)-A151988(2*n)`
-/

namespace A315654.P359860111874341210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A151988 (2 * n)

end

end A315654.P359860111874341210

namespace A315654

/-- `A022144(n)-A151988(2*n)` -/
def P359860111874341210.Spec : Prop :=
  ∀ n, P359860111874341210.a n = A315654 n

end A315654

/-! ## A315654.P14577407830375491839

`2*A313568(n)-A008574(n)`
-/

namespace A315654.P14577407830375491839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313568 n - A008574 n

end

end A315654.P14577407830375491839

namespace A315654

/-- `2*A313568(n)-A008574(n)` -/
def P14577407830375491839.Spec : Prop :=
  ∀ n, P14577407830375491839.a n = A315654 n

end A315654

/-! ## A315654.P3805317476068211050

`2*A315707(n)-A008458(n)`
-/

namespace A315654.P3805317476068211050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315707 n - A008458 n

end

end A315654.P3805317476068211050

namespace A315654

/-- `2*A315707(n)-A008458(n)` -/
def P3805317476068211050.Spec : Prop :=
  ∀ n, P3805317476068211050.a n = A315654 n

end A315654

/-! ## A315654.P14893810143038788350

`A315187(n)+Δ[2*A011858(n)]`
-/

namespace A315654.P14893810143038788350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + (f1 (n + 1) - f1 n)

end

end A315654.P14893810143038788350

namespace A315654

/-- `A315187(n)+Δ[2*A011858(n)]` -/
def P14893810143038788350.Spec : Prop :=
  ∀ n, P14893810143038788350.a n = A315654 n

end A315654

/-! ## A315654.P17936745741670474931

`A004275(A047299(2*n+1)+1)`
-/

namespace A315654.P17936745741670474931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047299 (2 * n + 1) + 1).toNat

end

end A315654.P17936745741670474931

namespace A315654

/-- `A004275(A047299(2*n+1)+1)` -/
def P17936745741670474931.Spec : Prop :=
  ∀ n, P17936745741670474931.a n = A315654 n

end A315654

/-! ## A315654.P6332870879120852011

`A072154(n)+A047486(2*n+1)`
-/

namespace A315654.P6332870879120852011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A047486 (2 * n + 1)

end

end A315654.P6332870879120852011

namespace A315654

/-- `A072154(n)+A047486(2*n+1)` -/
def P6332870879120852011.Spec : Prop :=
  ∀ n, P6332870879120852011.a n = A315654 n

end A315654

/-! ## A315654.P3983474170840158442

`A313568(n)+A057354(2*n+1)`
-/

namespace A315654.P3983474170840158442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A057354 (2 * n + 1)

end

end A315654.P3983474170840158442

namespace A315654

/-- `A313568(n)+A057354(2*n+1)` -/
def P3983474170840158442.Spec : Prop :=
  ∀ n, P3983474170840158442.a n = A315654 n

end A315654

/-! ## A315654.P4589553814778180459

`A022144(n)-2*A047263(n+1)`
-/

namespace A315654.P4589553814778180459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047263 (n + 1)

end

end A315654.P4589553814778180459

namespace A315654

/-- `A022144(n)-2*A047263(n+1)` -/
def P4589553814778180459.Spec : Prop :=
  ∀ n, P4589553814778180459.a n = A315654 n

end A315654

/-! ## A315654.P3617854247050599039

`A008574(2*n)-A151988(2*n)`
-/

namespace A315654.P3617854247050599039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A151988 (2 * n)

end

end A315654.P3617854247050599039

namespace A315654

/-- `A008574(2*n)-A151988(2*n)` -/
def P3617854247050599039.Spec : Prop :=
  ∀ n, P3617854247050599039.a n = A315654 n

end A315654

/-! ## A315654.P4544552887950485345

`A022144(n)-(A047326(n+1)+n)`
-/

namespace A315654.P4544552887950485345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A047326 (n + 1) + (n : ℤ))

end

end A315654.P4544552887950485345

namespace A315654

/-- `A022144(n)-(A047326(n+1)+n)` -/
def P4544552887950485345.Spec : Prop :=
  ∀ n, P4544552887950485345.a n = A315654 n

end A315654

/-! ## A315654.P14460678495679350932

`A004275(4*n+1-A047263(n+1))`
-/

namespace A315654.P14460678495679350932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 ((4 * n + 1 : ℤ) - A047263 (n + 1)).toNat

end

end A315654.P14460678495679350932

namespace A315654

/-- `A004275(4*n+1-A047263(n+1))` -/
def P14460678495679350932.Spec : Prop :=
  ∀ n, P14460678495679350932.a n = A315654 n

end A315654

/-! ## A315654.P13983002572499201827

`A008574(2*n)-2*A047263(n+1)`
-/

namespace A315654.P13983002572499201827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - 2 * A047263 (n + 1)

end

end A315654.P13983002572499201827

namespace A315654

/-- `A008574(2*n)-2*A047263(n+1)` -/
def P13983002572499201827.Spec : Prop :=
  ∀ n, P13983002572499201827.a n = A315654 n

end A315654

/-! ## A315654.P9338583820248232148

`2*A008574(2*n)-A310504(2*n)`
-/

namespace A315654.P9338583820248232148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A310504 (2 * n)

end

end A315654.P9338583820248232148

namespace A315654

/-- `2*A008574(2*n)-A310504(2*n)` -/
def P9338583820248232148.Spec : Prop :=
  ∀ n, P9338583820248232148.a n = A315654 n

end A315654

/-! ## A315654.P11572393552195697756

`2*A312928(2*n)-A008458(2*n)`
-/

namespace A315654.P11572393552195697756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312928 (2 * n) - A008458 (2 * n)

end

end A315654.P11572393552195697756

namespace A315654

/-- `2*A312928(2*n)-A008458(2*n)` -/
def P11572393552195697756.Spec : Prop :=
  ∀ n, P11572393552195697756.a n = A315654 n

end A315654

/-! ## A315654.P2115516697915969869

`A301718(n)+A244895(n)`
-/

namespace A315654.P2115516697915969869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A244895 n

end

end A315654.P2115516697915969869

namespace A315654

/-- `A301718(n)+A244895(n)` -/
def P2115516697915969869.Spec : Prop :=
  ∀ n, P2115516697915969869.a n = A315654 n

end A315654

/-! ## A315654.P16550207847330696940

`A330025(2*n)+A301718(n)`
-/

namespace A315654.P16550207847330696940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A301718 n

end

end A315654.P16550207847330696940

namespace A315654

/-- `A330025(2*n)+A301718(n)` -/
def P16550207847330696940.Spec : Prop :=
  ∀ n, P16550207847330696940.a n = A315654 n

end A315654

/-!
# A315655: Coordination sequence Gal.6.644.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315655, the canonical program `A315655.P15726535845934391746` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315655 has offset 0).

The definition of A315655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315655.P14707714275736066226

`abs(A008592(n)-A312472(n))`
-/

namespace A315655.P14707714275736066226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312472 n|

end

end A315655.P14707714275736066226

namespace A315655

/-- `abs(A008592(n)-A312472(n))` -/
def P14707714275736066226.Spec : Prop :=
  ∀ n, P14707714275736066226.a n = A315655 n

end A315655

/-! ## A315655.P13485955055390059585

`2*A008706(n)-A312472(n)`
-/

namespace A315655.P13485955055390059585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312472 n

end

end A315655.P13485955055390059585

namespace A315655

/-- `2*A008706(n)-A312472(n)` -/
def P13485955055390059585.Spec : Prop :=
  ∀ n, P13485955055390059585.a n = A315655 n

end A315655

/-! ## A315655.P2601058731137344355

`2*A315709(n)-A008458(n)`
-/

namespace A315655.P2601058731137344355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315709 n - A008458 n

end

end A315655.P2601058731137344355

namespace A315655

/-- `2*A315709(n)-A008458(n)` -/
def P2601058731137344355.Spec : Prop :=
  ∀ n, P2601058731137344355.a n = A315655 n

end A315655

/-! ## A315655.P2660892709413151481

`2*A315420(n)-A315188(n)`
-/

namespace A315655.P2660892709413151481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315420 n - A315188 n

end

end A315655.P2660892709413151481

namespace A315655

/-- `2*A315420(n)-A315188(n)` -/
def P2660892709413151481.Spec : Prop :=
  ∀ n, P2660892709413151481.a n = A315655 n

end A315655

/-! ## A315655.P12704645947532418126

`xor(1, A017281(n)-A312472(n))`
-/

namespace A315655.P12704645947532418126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A312472 n)

end

end A315655.P12704645947532418126

namespace A315655

/-- `xor(1, A017281(n)-A312472(n))` -/
def P12704645947532418126.Spec : Prop :=
  ∀ n, P12704645947532418126.a n = A315655 n

end A315655

/-! ## A315655.P1566793196665664868

`A004278(A017005(n)-A311804(n))`
-/

namespace A315655.P1566793196665664868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n - A311804 n).toNat

end

end A315655.P1566793196665664868

namespace A315655

/-- `A004278(A017005(n)-A311804(n))` -/
def P1566793196665664868.Spec : Prop :=
  ∀ n, P1566793196665664868.a n = A315655 n

end A315655

/-! ## A315655.P2569735750192308424

`A017281(n)-A004442(A312472(n))`
-/

namespace A315655.P2569735750192308424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A312472 n).toNat

end

end A315655.P2569735750192308424

namespace A315655

/-- `A017281(n)-A004442(A312472(n))` -/
def P2569735750192308424.Spec : Prop :=
  ∀ n, P2569735750192308424.a n = A315655 n

end A315655

/-! ## A315655.P15726535845934391746

`A103517(A315709(n)-A016777(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315655

/-- `A103517(A315709(n)-A016777(n))` -/
def P15726535845934391746.Spec : Prop :=
  ∀ n, P15726535845934391746.a n = A315655 n

theorem P15726535845934391746.correct : P15726535845934391746.Spec := by
  intro n
  simp only [A315655]

end A315655

/-! ## A315655.P1996797501863230458

`A008458(n)+A008574(n)-A312472(n)`
-/

namespace A315655.P1996797501863230458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312472 n)

end

end A315655.P1996797501863230458

namespace A315655

/-- `A008458(n)+A008574(n)-A312472(n)` -/
def P1996797501863230458.Spec : Prop :=
  ∀ n, P1996797501863230458.a n = A315655 n

end A315655

/-! ## A315655.P479782895576233648

`A312472(n)+A005843(A008706(n)-A312472(n))`
-/

namespace A315655.P479782895576233648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312472 n + A005843 (A008706 n - A312472 n).toNat

end

end A315655.P479782895576233648

namespace A315655

/-- `A312472(n)+A005843(A008706(n)-A312472(n))` -/
def P479782895576233648.Spec : Prop :=
  ∀ n, P479782895576233648.a n = A315655 n

end A315655

/-! ## A315655.P14365931784357584231

`A008458(n)-A005843(A008458(n)-A315709(n))`
-/

namespace A315655.P14365931784357584231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315709 n).toNat

end

end A315655.P14365931784357584231

namespace A315655

/-- `A008458(n)-A005843(A008458(n)-A315709(n))` -/
def P14365931784357584231.Spec : Prop :=
  ∀ n, P14365931784357584231.a n = A315655 n

end A315655

/-! ## A315655.P5204646867148517676

`A005843(A008706(n))-A312472(n)`
-/

namespace A315655.P5204646867148517676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312472 n

end

end A315655.P5204646867148517676

namespace A315655

/-- `A005843(A008706(n))-A312472(n)` -/
def P5204646867148517676.Spec : Prop :=
  ∀ n, P5204646867148517676.a n = A315655 n

end A315655

/-! ## A315655.P14635680813783417227

`A005843(A315709(n))-A008458(n)`
-/

namespace A315655.P14635680813783417227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315709 n).toNat - A008458 n

end

end A315655.P14635680813783417227

namespace A315655

/-- `A005843(A315709(n))-A008458(n)` -/
def P14635680813783417227.Spec : Prop :=
  ∀ n, P14635680813783417227.a n = A315655 n

end A315655

/-! ## A315655.P15159646277976334228

`A315767(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315655.P15159646277976334228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315767 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315655.P15159646277976334228

namespace A315655

/-- `A315767(2*n)+A008458(n+1)-(12*n+6)` -/
def P15159646277976334228.Spec : Prop :=
  ∀ n, P15159646277976334228.a n = A315655 n

end A315655

/-!
# A315656: Coordination sequence Gal.6.667.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315656, the canonical program `A315656.P845046901227409408` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315656 has offset 0).

The definition of A315656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315656.P845046901227409408

`A008458(n)-2*A077814(A004396(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315656

/-- `A008458(n)-2*A077814(A004396(n))` -/
def P845046901227409408.Spec : Prop :=
  ∀ n, P845046901227409408.a n = A315656 n

theorem P845046901227409408.correct : P845046901227409408.Spec := by
  intro n
  simp only [A315656]

end A315656

/-! ## A315656.P12433072194472750200

`A008458(n)+A008579(n)-A312790(n)`
-/

namespace A315656.P12433072194472750200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A312790 n)

end

end A315656.P12433072194472750200

namespace A315656

/-- `A008458(n)+A008579(n)-A312790(n)` -/
def P12433072194472750200.Spec : Prop :=
  ∀ n, P12433072194472750200.a n = A315656 n

theorem P12433072194472750200.correct : P12433072194472750200.Spec := by
  intro n
  simp only [A315656, Nat.add_sub_cancel, A315656.P12433072194472750200.a, A315656.P845046901227409408.a, A004396, A004396.P17032557045289780609.a, A008458, A008458.P10936398443463225625.a, A008579, A008579.P9321507706539872754.a, A077814, A077814.P1153780925982348255.a, A312790, A312790.P14315813496595789785.a, A312736, A312736.P842124473673064007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315656

/-! ## A315656.P12803143187887836559

`2*A315711(n)-A008458(n)`
-/

namespace A315656.P12803143187887836559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315711 n - A008458 n

end

end A315656.P12803143187887836559

namespace A315656

/-- `2*A315711(n)-A008458(n)` -/
def P12803143187887836559.Spec : Prop :=
  ∀ n, P12803143187887836559.a n = A315656 n

end A315656

/-! ## A315656.P11903619495821305867

`A315711(n)-A077814(A004396(n))`
-/

namespace A315656.P11903619495821305867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315711 n - A077814 (A004396 n).toNat

end

end A315656.P11903619495821305867

namespace A315656

/-- `A315711(n)-A077814(A004396(n))` -/
def P11903619495821305867.Spec : Prop :=
  ∀ n, P11903619495821305867.a n = A315656 n

end A315656

/-! ## A315656.P5811085409234556925

`A103517(A315711(n)-A016777(n))`
-/

namespace A315656.P5811085409234556925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315711 n - A016777 n).toNat

end

end A315656.P5811085409234556925

namespace A315656

/-- `A103517(A315711(n)-A016777(n))` -/
def P5811085409234556925.Spec : Prop :=
  ∀ n, P5811085409234556925.a n = A315656 n

end A315656

/-! ## A315656.P11240034687618614450

`A103517(A315711(n)%A016777(n))`
-/

namespace A315656.P11240034687618614450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A315711 n) (A016777 n)).toNat

end

end A315656.P11240034687618614450

namespace A315656

/-- `A103517(A315711(n)%A016777(n))` -/
def P11240034687618614450.Spec : Prop :=
  ∀ n, P11240034687618614450.a n = A315656 n

end A315656

/-! ## A315656.P13982778998291200163

`A004275(A315711(n)-record[A014682(n)])`
-/

namespace A315656.P13982778998291200163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A315711 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A315656.P13982778998291200163

namespace A315656

/-- `A004275(A315711(n)-record[A014682(n)])` -/
def P13982778998291200163.Spec : Prop :=
  ∀ n, P13982778998291200163.a n = A315656 n

end A315656

/-! ## A315656.P11964689227748902193

`A315711(n)-A008588(n)%A315711(n)`
-/

namespace A315656.P11964689227748902193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315711 n - Int.tmod (A008588 n) (A315711 n)

end

end A315656.P11964689227748902193

namespace A315656

/-- `A315711(n)-A008588(n)%A315711(n)` -/
def P11964689227748902193.Spec : Prop :=
  ∀ n, P11964689227748902193.a n = A315656 n

end A315656

/-! ## A315656.P8365157279709555541

`A008458(n)-A005843(A008458(n)-A315711(n))`
-/

namespace A315656.P8365157279709555541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315711 n).toNat

end

end A315656.P8365157279709555541

namespace A315656

/-- `A008458(n)-A005843(A008458(n)-A315711(n))` -/
def P8365157279709555541.Spec : Prop :=
  ∀ n, P8365157279709555541.a n = A315656 n

end A315656

/-! ## A315656.P736692012615311141

`A005843(A315711(n))-A008458(n)`
-/

namespace A315656.P736692012615311141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315711 n).toNat - A008458 n

end

end A315656.P736692012615311141

namespace A315656

/-- `A005843(A315711(n))-A008458(n)` -/
def P736692012615311141.Spec : Prop :=
  ∀ n, P736692012615311141.a n = A315656 n

end A315656

/-! ## A315656.P4420839162040921913

`A005408(A315711(n))-A271114(n)`
-/

namespace A315656.P4420839162040921913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A315711 n).toNat - A271114 n

end

end A315656.P4420839162040921913

namespace A315656

/-- `A005408(A315711(n))-A271114(n)` -/
def P4420839162040921913.Spec : Prop :=
  ∀ n, P4420839162040921913.a n = A315656 n

end A315656

/-!
# A315657: Coordination sequence Gal.5.319.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315657, there is no canonical definition to state claims against.
-/

/-! ## A315657.P14179014242009253122

`A316441(A334053(n))+A063099(n+1)`
-/

namespace A315657.P14179014242009253122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A334053 n).toNat + A063099 (n + 1)

end

end A315657.P14179014242009253122

/-!
# A315658: Coordination sequence Gal.6.665.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315658, there is no canonical definition to state claims against.
-/

/-! ## A315658.P16020539082370837625

`2*A315497(n)-A315331(n)`
-/

namespace A315658.P16020539082370837625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315497 n - A315331 n

end

end A315658.P16020539082370837625

/-! ## A315658.P16915281749767271282

`A310385(n)+A315331(n)-A008579(n)`
-/

namespace A315658.P16915281749767271282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310385 n + (A315331 n - A008579 n)

end

end A315658.P16915281749767271282

/-! ## A315658.P7343159211018484549

`A315331(n)+A005843(A315497(n)-A315331(n))`
-/

namespace A315658.P7343159211018484549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A005843 (A315497 n - A315331 n).toNat

end

end A315658.P7343159211018484549

/-! ## A315658.P2090412431032132365

`A005843(A315497(n))-A315331(n)`
-/

namespace A315658.P2090412431032132365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315497 n).toNat - A315331 n

end

end A315658.P2090412431032132365

/-! ## A315658.P11523377451879028283

`A051176(A315582(n))+4*n`
-/

namespace A315658.P11523377451879028283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A315582 n).toNat + (4 * n : ℤ)

end

end A315658.P11523377451879028283

/-! ## A315658.P16044704768768738211

`A008574(n)+A002264(A315582(n))`
-/

namespace A315658.P16044704768768738211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A315582 n).toNat

end

end A315658.P16044704768768738211

/-! ## A315658.P3520749361496326975

`A008486(n)+A002264(A315582(n))+n`
-/

namespace A315658.P3520749361496326975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A002264 (A315582 n).toNat + (n : ℤ))

end

end A315658.P3520749361496326975

/-! ## A315658.P15968304624892573565

`A008706(n)+A002264(A315582(n))-n`
-/

namespace A315658.P15968304624892573565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A002264 (A315582 n).toNat - (n : ℤ))

end

end A315658.P15968304624892573565

/-! ## A315658.P7058154599505761449

`2*n+1+A002264(A315582(n))+A130824(n)/2`
-/

namespace A315658.P7058154599505761449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) + ((A002264 (A315582 n).toNat : ℚ) + (A130824 n : ℚ) / 2)

end

end A315658.P7058154599505761449

/-! ## A315658.P3268282911521444843

`A004525(A022144(n))+A002264(A315582(n))`
-/

namespace A315658.P3268282911521444843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + A002264 (A315582 n).toNat

end

end A315658.P3268282911521444843

/-!
# A315659: Coordination sequence Gal.5.322.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315659, there is no canonical definition to state claims against.
-/

/-! ## A315659.P8726880893747250805

`A172332(n)+A054354(A006078(n+2))`
-/

namespace A315659.P8726880893747250805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172332 n + A054354 (A006078 (n + 2)).toNat

end

end A315659.P8726880893747250805

/-! ## A315659.P9504274678260483300

`A105644(n)-A008683(A211681(2*n+3))`
-/

namespace A315659.P9504274678260483300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105644 n - A008683 (A211681 (2 * n + 3)).toNat

end

end A315659.P9504274678260483300

/-!
# A315660: Coordination sequence Gal.5.320.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315660, there is no canonical definition to state claims against.
-/

/-! ## A315660.P17647681024747180339

`A315706(n)-A010051(A127782(n))`
-/

namespace A315660.P17647681024747180339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A010051 (A127782 n).toNat

end

end A315660.P17647681024747180339

/-! ## A315660.P5096137735671405608

`A315706(n)-A025457(A024428(n+1))`
-/

namespace A315660.P5096137735671405608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A025457 (A024428 (n + 1)).toNat

end

end A315660.P5096137735671405608

/-! ## A315660.P18236339761119635579

`A315706(n)-A000035(A102844(n+2))`
-/

namespace A315660.P18236339761119635579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A000035 (A102844 (n + 2)).toNat

end

end A315660.P18236339761119635579

/-! ## A315660.P3071321753080719569

`A016921(n)-A002828(A318862(n+5))`
-/

namespace A315660.P3071321753080719569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A002828 (A318862 (n + 5)).toNat

end

end A315660.P3071321753080719569

/-! ## A315660.P8997691433758535556

`A004273(3*n+1)-A002828(A318862(n+5))`
-/

namespace A315660.P8997691433758535556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (3 * n + 1) - A002828 (A318862 (n + 5)).toNat

end

end A315660.P8997691433758535556

/-!
# A315661: Coordination sequence Gal.5.321.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315661, there is no canonical definition to state claims against.
-/

/-! ## A315661.P12014760208841368505

`A315502(n)+A083892(A126068(n+2)+1)`
-/

namespace A315661.P12014760208841368505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315502 n + A083892 (A126068 (n + 2) + 1).toNat

end

end A315661.P12014760208841368505

/-! ## A315661.P16864785075617134298

`6*n+2-A007895(A029494(2*n+1))`
-/

namespace A315661.P16864785075617134298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - A007895 (A029494 (2 * n + 1)).toNat

end

end A315661.P16864785075617134298

/-! ## A315661.P18120540933560590306

`A315654(n)+A001899(A077833(n))`
-/

namespace A315661.P18120540933560590306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315654 n + A001899 (A077833 n).toNat

end

end A315661.P18120540933560590306

/-! ## A315661.P437468922238704230

`A315477(n)+A124060(A124078(n))`
-/

namespace A315661.P437468922238704230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n + A124060 (A124078 n).toNat

end

end A315661.P437468922238704230

/-!
# A315662: Coordination sequence Gal.4.149.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315662, there is no canonical definition to state claims against.
-/

/-! ## A315662.P10967671365449757253

`round(A310769(3*n)/2)`
-/

namespace A315662.P10967671365449757253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A310769 (3 * n) : ℚ) / 2)

end

end A315662.P10967671365449757253

/-! ## A315662.P4111418686909416205

`A310769(3*n)/A020639(A008458(n))`
-/

namespace A315662.P4111418686909416205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310769 (3 * n) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A315662.P4111418686909416205

/-! ## A315662.P17167843639878745491

`A004525(A310769(3*n))`
-/

namespace A315662.P17167843639878745491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310769 (3 * n)).toNat

end

end A315662.P17167843639878745491

/-! ## A315662.P13429126021934383648

`A004526(A310769(3*n)+1)`
-/

namespace A315662.P13429126021934383648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310769 (3 * n) + 1).toNat

end

end A315662.P13429126021934383648

/-! ## A315662.P1746966528967054873

`A032742(A310769(A005843(n)+n))`
-/

namespace A315662.P1746966528967054873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A310769 (A005843 n + (n : ℤ)).toNat).toNat

end

end A315662.P1746966528967054873

/-!
# A315663: Coordination sequence Gal.6.655.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315663, there is no canonical definition to state claims against.
-/

/-! ## A315663.P5877528158841096920

`A301694(n)+A073610(A090593(n+1))`
-/

namespace A315663.P5877528158841096920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n + A073610 (A090593 (n + 1)).toNat

end

end A315663.P5877528158841096920

/-! ## A315663.P3410212618012576977

`2*A314049(n)-A346131(A311249(n))`
-/

namespace A315663.P3410212618012576977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314049 n - A346131 (A311249 n).toNat

end

end A315663.P3410212618012576977

/-! ## A315663.P18270519356420697637

`A004277(A314049(n))-A346131(A311249(n))`
-/

namespace A315663.P18270519356420697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314049 n).toNat - A346131 (A311249 n).toNat

end

end A315663.P18270519356420697637

/-!
# A315664: Coordination sequence Gal.5.322.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315664, there is no canonical definition to state claims against.
-/

/-! ## A315664.P8904179686822798038

`6*n+2-A265745(A130279(n+1))`
-/

namespace A315664.P8904179686822798038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - A265745 (A130279 (n + 1)).toNat

end

end A315664.P8904179686822798038

/-! ## A315664.P8814422405802171467

`A008458(n)-A069283(A130279(n+1))`
-/

namespace A315664.P8814422405802171467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A069283 (A130279 (n + 1)).toNat

end

end A315664.P8814422405802171467

/-! ## A315664.P15157034228178509748

`A008458(A087051(n))-2*A271420(n+1)`
-/

namespace A315664.P15157034228178509748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A087051 n).toNat - 2 * A271420 (n + 1)

end

end A315664.P15157034228178509748

/-! ## A315664.P14145336219982214244

`A008458(A087051(n))-2*A346700(n+1)`
-/

namespace A315664.P14145336219982214244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A087051 n).toNat - 2 * A346700 (n + 1)

end

end A315664.P14145336219982214244

/-! ## A315664.P10200753964051183165

`A056239(A001248(3*n+1))-A001223(n+1)`
-/

namespace A315664.P10200753964051183165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001248 (3 * n + 1)).toNat - A001223 (n + 1)

end

end A315664.P10200753964051183165

/-!
# A315665: Coordination sequence Gal.6.556.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315665, there is no canonical definition to state claims against.
-/

/-! ## A315665.P6504174376343405455

`A315627(n)+A059841(A148850(n))`
-/

namespace A315665.P6504174376343405455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315627 n + A059841 (A148850 n).toNat

end

end A315665.P6504174376343405455

/-! ## A315665.P18069174730330145008

`A315627(n)+A059841(A148882(n))`
-/

namespace A315665.P18069174730330145008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315627 n + A059841 (A148882 n).toNat

end

end A315665.P18069174730330145008

/-! ## A315665.P9434841333647610236

`A315676(n)-A000122(A005316(n+4))`
-/

namespace A315665.P9434841333647610236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n - A000122 (A005316 (n + 4)).toNat

end

end A315665.P9434841333647610236

/-!
# A315666: Coordination sequence Gal.6.134.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315666, the canonical program `A315666.P9638974132160474731` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315666 has offset 0).

The definition of A315666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315666.P9638974132160474731

`A314089(n)+A046978(A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315666

/-- `A314089(n)+A046978(A004396(n))` -/
def P9638974132160474731.Spec : Prop :=
  ∀ n, P9638974132160474731.a n = A315666 n

theorem P9638974132160474731.correct : P9638974132160474731.Spec := by
  intro n
  simp only [A315666]

end A315666

/-! ## A315666.P1617598365714320709

`A314091(n)+A128834(A004525(n))`
-/

namespace A315666.P1617598365714320709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A128834 (A004525 n).toNat

end

end A315666.P1617598365714320709

namespace A315666

/-- `A314091(n)+A128834(A004525(n))` -/
def P1617598365714320709.Spec : Prop :=
  ∀ n, P1617598365714320709.a n = A315666 n

end A315666

/-! ## A315666.P9762697062095908657

`abs(A008592(n)-A312210(n))`
-/

namespace A315666.P9762697062095908657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312210 n|

end

end A315666.P9762697062095908657

namespace A315666

/-- `abs(A008592(n)-A312210(n))` -/
def P9762697062095908657.Spec : Prop :=
  ∀ n, P9762697062095908657.a n = A315666 n

end A315666

/-! ## A315666.P2564679866536108027

`2*A008706(n)-A312210(n)`
-/

namespace A315666.P2564679866536108027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312210 n

end

end A315666.P2564679866536108027

namespace A315666

/-- `2*A008706(n)-A312210(n)` -/
def P2564679866536108027.Spec : Prop :=
  ∀ n, P2564679866536108027.a n = A315666 n

end A315666

/-! ## A315666.P15186080762716197989

`A008458(n)+A008574(n)-A312210(n)`
-/

namespace A315666.P15186080762716197989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312210 n)

end

end A315666.P15186080762716197989

namespace A315666

/-- `A008458(n)+A008574(n)-A312210(n)` -/
def P15186080762716197989.Spec : Prop :=
  ∀ n, P15186080762716197989.a n = A315666 n

end A315666

/-! ## A315666.P10789423868860251713

`A315735(n)-A002264(A030118(n))`
-/

namespace A315666.P10789423868860251713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315735 n - A002264 (A030118 n).toNat

end

end A315666.P10789423868860251713

namespace A315666

/-- `A315735(n)-A002264(A030118(n))` -/
def P10789423868860251713.Spec : Prop :=
  ∀ n, P10789423868860251713.a n = A315666 n

end A315666

/-! ## A315666.P11620544889101111284

`A315735(n)-∑[A022003(A110654(n))]`
-/

namespace A315666.P11620544889101111284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315735 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315666.P11620544889101111284

namespace A315666

/-- `A315735(n)-∑[A022003(A110654(n))]` -/
def P11620544889101111284.Spec : Prop :=
  ∀ n, P11620544889101111284.a n = A315666 n

end A315666

/-! ## A315666.P7594384969455207369

`A008706(n)+A315735(n)-A301697(n)`
-/

namespace A315666.P7594384969455207369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A315735 n - A301697 n)

end

end A315666.P7594384969455207369

namespace A315666

/-- `A008706(n)+A315735(n)-A301697(n)` -/
def P7594384969455207369.Spec : Prop :=
  ∀ n, P7594384969455207369.a n = A315666 n

end A315666

/-! ## A315666.P12677218305045779110

`A315741(n)-∑[A021913(A313023(n))]`
-/

namespace A315666.P12677218305045779110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315666.P12677218305045779110

namespace A315666

/-- `A315741(n)-∑[A021913(A313023(n))]` -/
def P12677218305045779110.Spec : Prop :=
  ∀ n, P12677218305045779110.a n = A315666 n

end A315666

/-! ## A315666.P4159404939834567203

`2*A315683(n)-A315710(n)`
-/

namespace A315666.P4159404939834567203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315683 n - A315710 n

end

end A315666.P4159404939834567203

namespace A315666

/-- `2*A315683(n)-A315710(n)` -/
def P4159404939834567203.Spec : Prop :=
  ∀ n, P4159404939834567203.a n = A315666 n

end A315666

/-! ## A315666.P16310381865390082236

`A315710(n)-A005843(A315710(n)-A315683(n))`
-/

namespace A315666.P16310381865390082236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A005843 (A315710 n - A315683 n).toNat

end

end A315666.P16310381865390082236

namespace A315666

/-- `A315710(n)-A005843(A315710(n)-A315683(n))` -/
def P16310381865390082236.Spec : Prop :=
  ∀ n, P16310381865390082236.a n = A315666 n

end A315666

/-! ## A315666.P15555377855350695341

`A005843(A008706(n))-A312210(n)`
-/

namespace A315666.P15555377855350695341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312210 n

end

end A315666.P15555377855350695341

namespace A315666

/-- `A005843(A008706(n))-A312210(n)` -/
def P15555377855350695341.Spec : Prop :=
  ∀ n, P15555377855350695341.a n = A315666 n

end A315666

/-! ## A315666.P6476549506914789150

`A005843(A315683(n))-A315710(n)`
-/

namespace A315666.P6476549506914789150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315683 n).toNat - A315710 n

end

end A315666.P6476549506914789150

namespace A315666

/-- `A005843(A315683(n))-A315710(n)` -/
def P6476549506914789150.Spec : Prop :=
  ∀ n, P6476549506914789150.a n = A315666 n

end A315666

/-!
# A315667: Coordination sequence Gal.6.234.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315667, the canonical program `A315667.P5335161939326913677` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315667 has offset 0).

The definition of A315667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315667.P6408665163880667826

`A315629(n)+A004525(A315678(n)-A315629(n))`
-/

namespace A315667.P6408665163880667826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315629 n + A004525 (A315678 n - A315629 n).toNat

end

end A315667.P6408665163880667826

namespace A315667

/-- `A315629(n)+A004525(A315678(n)-A315629(n))` -/
def P6408665163880667826.Spec : Prop :=
  ∀ n, P6408665163880667826.a n = A315667 n

end A315667

/-! ## A315667.P5335161939326913677

`A180004(A315629(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315667

/-- `A180004(A315629(n))` -/
def P5335161939326913677.Spec : Prop :=
  ∀ n, P5335161939326913677.a n = A315667 n

theorem P5335161939326913677.correct : P5335161939326913677.Spec := by
  intro n
  simp only [A315667]

end A315667

/-! ## A315667.P17442114466189582745

`A004525(A315678(n)+A315629(n))`
-/

namespace A315667.P17442114466189582745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315678 n + A315629 n).toNat

end

end A315667.P17442114466189582745

namespace A315667

/-- `A004525(A315678(n)+A315629(n))` -/
def P17442114466189582745.Spec : Prop :=
  ∀ n, P17442114466189582745.a n = A315667 n

end A315667

/-! ## A315667.P1977508276194067299

`abs(A008592(n)-A312209(n))`
-/

namespace A315667.P1977508276194067299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312209 n|

end

end A315667.P1977508276194067299

namespace A315667

/-- `abs(A008592(n)-A312209(n))` -/
def P1977508276194067299.Spec : Prop :=
  ∀ n, P1977508276194067299.a n = A315667 n

end A315667

/-! ## A315667.P15039896532152774021

`2*A008706(n)-A312209(n)`
-/

namespace A315667.P15039896532152774021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312209 n

end

end A315667.P15039896532152774021

namespace A315667

/-- `2*A008706(n)-A312209(n)` -/
def P15039896532152774021.Spec : Prop :=
  ∀ n, P15039896532152774021.a n = A315667 n

end A315667

/-! ## A315667.P3977201842541728039

`A135042(2*n+1)-A312209(n)`
-/

namespace A315667.P3977201842541728039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312209 n

end

end A315667.P3977201842541728039

namespace A315667

/-- `A135042(2*n+1)-A312209(n)` -/
def P3977201842541728039.Spec : Prop :=
  ∀ n, P3977201842541728039.a n = A315667 n

end A315667

/-! ## A315667.P15302603805020932977

`A005843(A008706(n))-A312209(n)`
-/

namespace A315667.P15302603805020932977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312209 n

end

end A315667.P15302603805020932977

namespace A315667

/-- `A005843(A008706(n))-A312209(n)` -/
def P15302603805020932977.Spec : Prop :=
  ∀ n, P15302603805020932977.a n = A315667 n

end A315667

/-! ## A315667.P8207578975918497860

`A065502(A008458(n))-A312209(n)`
-/

namespace A315667.P8207578975918497860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312209 n

end

end A315667.P8207578975918497860

namespace A315667

/-- `A065502(A008458(n))-A312209(n)` -/
def P8207578975918497860.Spec : Prop :=
  ∀ n, P8207578975918497860.a n = A315667 n

end A315667

/-! ## A315667.P15391151405649529974

`A271324(A022144(n))-A312209(n)`
-/

namespace A315667.P15391151405649529974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A312209 n

end

end A315667.P15391151405649529974

namespace A315667

/-- `A271324(A022144(n))-A312209(n)` -/
def P15391151405649529974.Spec : Prop :=
  ∀ n, P15391151405649529974.a n = A315667 n

end A315667

/-! ## A315667.P15207632136406852010

`A008458(n)+A008574(n)-A312209(n)`
-/

namespace A315667.P15207632136406852010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312209 n)

end

end A315667.P15207632136406852010

namespace A315667

/-- `A008458(n)+A008574(n)-A312209(n)` -/
def P15207632136406852010.Spec : Prop :=
  ∀ n, P15207632136406852010.a n = A315667 n

end A315667

/-! ## A315667.P17568024107636114968

`A233583(A017281(n))-A312209(n)`
-/

namespace A315667.P17568024107636114968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A312209 n

end

end A315667.P17568024107636114968

namespace A315667

/-- `A233583(A017281(n))-A312209(n)` -/
def P17568024107636114968.Spec : Prop :=
  ∀ n, P17568024107636114968.a n = A315667 n

end A315667

/-!
# A315668: Coordination sequence Gal.5.69.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315668, the canonical program `A315668.P3744435370898828979` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315668 has offset 0).

The definition of A315668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315668.P8514233229087559636

`A253262(n)+A008706(n)`
-/

namespace A315668.P8514233229087559636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + A008706 n

end

end A315668.P8514233229087559636

namespace A315668

/-- `A253262(n)+A008706(n)` -/
def P8514233229087559636.Spec : Prop :=
  ∀ n, P8514233229087559636.a n = A315668 n

end A315668

/-! ## A315668.P3744435370898828979

`A008574(n)+A253262(n)+n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315668

/-- `A008574(n)+A253262(n)+n` -/
def P3744435370898828979.Spec : Prop :=
  ∀ n, P3744435370898828979.a n = A315668 n

theorem P3744435370898828979.correct : P3744435370898828979.Spec := by
  intro n
  simp only [A315668]

end A315668

/-! ## A315668.P936188797211753731

`A008458(n)+A253262(n)-n`
-/

namespace A315668.P936188797211753731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A253262 n - (n : ℤ))

end

end A315668.P936188797211753731

namespace A315668

/-- `A008458(n)+A253262(n)-n` -/
def P936188797211753731.Spec : Prop :=
  ∀ n, P936188797211753731.a n = A315668 n

end A315668

/-! ## A315668.P13851704776701116908

`A008486(2*n)+A253262(n)-n`
-/

namespace A315668.P13851704776701116908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A253262 n - (n : ℤ))

end

end A315668.P13851704776701116908

namespace A315668

/-- `A008486(2*n)+A253262(n)-n` -/
def P13851704776701116908.Spec : Prop :=
  ∀ n, P13851704776701116908.a n = A315668 n

end A315668

/-! ## A315668.P11160950635606349194

`A253262(n)+A001068(A008574(n))`
-/

namespace A315668.P11160950635606349194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + A001068 (A008574 n).toNat

end

end A315668.P11160950635606349194

namespace A315668

/-- `A253262(n)+A001068(A008574(n))` -/
def P11160950635606349194.Spec : Prop :=
  ∀ n, P11160950635606349194.a n = A315668 n

end A315668

/-! ## A315668.P11677623875953615910

`A008706(n)-A253262(A020710(n))`
-/

namespace A315668.P11677623875953615910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A253262 (A020710 n).toNat

end

end A315668.P11677623875953615910

namespace A315668

/-- `A008706(n)-A253262(A020710(n))` -/
def P11677623875953615910.Spec : Prop :=
  ∀ n, P11677623875953615910.a n = A315668 n

end A315668

/-! ## A315668.P11332219271358703983

`A004277(A005843(n))+A253262(n)+n`
-/

namespace A315668.P11332219271358703983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005843 n).toNat + (A253262 n + (n : ℤ))

end

end A315668.P11332219271358703983

namespace A315668

/-- `A004277(A005843(n))+A253262(n)+n` -/
def P11332219271358703983.Spec : Prop :=
  ∀ n, P11332219271358703983.a n = A315668 n

end A315668

/-! ## A315668.P11979540061771333481

`A310446(n)+2*A330025(n)`
-/

namespace A315668.P11979540061771333481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n + 2 * A330025 n

end

end A315668.P11979540061771333481

namespace A315668

/-- `A310446(n)+2*A330025(n)` -/
def P11979540061771333481.Spec : Prop :=
  ∀ n, P11979540061771333481.a n = A315668 n

theorem P11979540061771333481.correct : P11979540061771333481.Spec := by
  intro n
  simp only [A315668, Nat.add_sub_cancel, A315668.P11979540061771333481.a, A315668.P3744435370898828979.a, A008574, A008574.P1300280032690682112.a, A253262, A253262.P6184646248567078382.a, A310446, A310446.P3653762091158241676.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315668

/-! ## A315668.P7194821840899856817

`abs(A008592(n)-A312208(n))`
-/

namespace A315668.P7194821840899856817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312208 n|

end

end A315668.P7194821840899856817

namespace A315668

/-- `abs(A008592(n)-A312208(n))` -/
def P7194821840899856817.Spec : Prop :=
  ∀ n, P7194821840899856817.a n = A315668 n

end A315668

/-! ## A315668.P4258139325183591705

`floor(A010015(n)/A312208(n))`
-/

namespace A315668.P4258139325183591705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A312208 n : ℚ)⌋

end

end A315668.P4258139325183591705

namespace A315668

/-- `floor(A010015(n)/A312208(n))` -/
def P4258139325183591705.Spec : Prop :=
  ∀ n, P4258139325183591705.a n = A315668 n

end A315668

/-! ## A315668.P3050243137212482150

`A008458(n)+A008574(n)-A312208(n)`
-/

namespace A315668.P3050243137212482150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312208 n)

end

end A315668.P3050243137212482150

namespace A315668

/-- `A008458(n)+A008574(n)-A312208(n)` -/
def P3050243137212482150.Spec : Prop :=
  ∀ n, P3050243137212482150.a n = A315668 n

end A315668

/-! ## A315668.P7227685457540034699

`A315726(n)-A002266(n+2)`
-/

namespace A315668.P7227685457540034699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315726 n - A002266 (n + 2)

end

end A315668.P7227685457540034699

namespace A315668

/-- `A315726(n)-A002266(n+2)` -/
def P7227685457540034699.Spec : Prop :=
  ∀ n, P7227685457540034699.a n = A315668 n

end A315668

/-! ## A315668.P16466461566508274389

`A330025(n)+A314093(n)`
-/

namespace A315668.P16466461566508274389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314093 n

end

end A315668.P16466461566508274389

namespace A315668

/-- `A330025(n)+A314093(n)` -/
def P16466461566508274389.Spec : Prop :=
  ∀ n, P16466461566508274389.a n = A315668 n

theorem P16466461566508274389.correct : P16466461566508274389.Spec := by
  intro n
  simp only [A315668, Nat.add_sub_cancel, A315668.P16466461566508274389.a, A315668.P3744435370898828979.a, A008574, A008574.P1300280032690682112.a, A253262, A253262.P6184646248567078382.a, A314093, A314093.P5564140878793647355.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A313127, A313127.P3112124540791628005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315668

/-! ## A315668.P14076277014532697381

`A074067(A312208(n))`
-/

namespace A315668.P14076277014532697381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A312208 n).toNat

end

end A315668.P14076277014532697381

namespace A315668

/-- `A074067(A312208(n))` -/
def P14076277014532697381.Spec : Prop :=
  ∀ n, P14076277014532697381.a n = A315668 n

end A315668

/-! ## A315668.P10537138966357452092

`A008706(n)-A253262(A008591(n))`
-/

namespace A315668.P10537138966357452092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A253262 (A008591 n).toNat

end

end A315668.P10537138966357452092

namespace A315668

/-- `A008706(n)-A253262(A008591(n))` -/
def P10537138966357452092.Spec : Prop :=
  ∀ n, P10537138966357452092.a n = A315668 n

end A315668

/-!
# A315669: Coordination sequence Gal.5.113.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315669, the canonical program `A315669.P3322575996641601745` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315669 has offset 0).

The definition of A315669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315669.P3584856900491411419

`abs(A008592(n)-A312207(n))`
-/

namespace A315669.P3584856900491411419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312207 n|

end

end A315669.P3584856900491411419

namespace A315669

/-- `abs(A008592(n)-A312207(n))` -/
def P3584856900491411419.Spec : Prop :=
  ∀ n, P3584856900491411419.a n = A315669 n

end A315669

/-! ## A315669.P9565356728919037601

`A315631(n)+Δ[A011862(n)]`
-/

namespace A315669.P9565356728919037601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315631 n + (f1 (n + 1) - f1 n)

end

end A315669.P9565356728919037601

namespace A315669

/-- `A315631(n)+Δ[A011862(n)]` -/
def P9565356728919037601.Spec : Prop :=
  ∀ n, P9565356728919037601.a n = A315669 n

end A315669

/-! ## A315669.P10391147487897244265

`2*A008706(n)-A312207(n)`
-/

namespace A315669.P10391147487897244265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312207 n

end

end A315669.P10391147487897244265

namespace A315669

/-- `2*A008706(n)-A312207(n)` -/
def P10391147487897244265.Spec : Prop :=
  ∀ n, P10391147487897244265.a n = A315669 n

end A315669

/-! ## A315669.P3322575996641601745

`2*A313683(n)-A311816(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315669

/-- `2*A313683(n)-A311816(n)` -/
def P3322575996641601745.Spec : Prop :=
  ∀ n, P3322575996641601745.a n = A315669 n

theorem P3322575996641601745.correct : P3322575996641601745.Spec := by
  intro n
  simp only [A315669]

end A315669

/-! ## A315669.P4011353246812561936

`A315446(n)+A004396(n-A004396(n))`
-/

namespace A315669.P4011353246812561936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315669.P4011353246812561936

namespace A315669

/-- `A315446(n)+A004396(n-A004396(n))` -/
def P4011353246812561936.Spec : Prop :=
  ∀ n, P4011353246812561936.a n = A315669 n

end A315669

/-! ## A315669.P3063265533332016552

`A008458(n)+A008574(n)-A312207(n)`
-/

namespace A315669.P3063265533332016552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312207 n)

end

end A315669.P3063265533332016552

namespace A315669

/-- `A008458(n)+A008574(n)-A312207(n)` -/
def P3063265533332016552.Spec : Prop :=
  ∀ n, P3063265533332016552.a n = A315669 n

end A315669

/-! ## A315669.P13118020330707261355

`A315727(n)-Δ[A011862(n)]`
-/

namespace A315669.P13118020330707261355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315727 n - (f1 (n + 1) - f1 n)

end

end A315669.P13118020330707261355

namespace A315669

/-- `A315727(n)-Δ[A011862(n)]` -/
def P13118020330707261355.Spec : Prop :=
  ∀ n, P13118020330707261355.a n = A315669 n

theorem P13118020330707261355.correct : P13118020330707261355.Spec := by
  intro n
  simp only [A315669, Nat.add_sub_cancel, A315669.P13118020330707261355.f1, A315669.P13118020330707261355.a, A315669.P3322575996641601745.a, A011862, A011862.P9485299441699197278.a, A311816, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, A313683, A313683.P3336220210830735973.a, A315727, A315727.P1759850529148023067.f1, A315727.P1759850529148023067.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315669

/-! ## A315669.P12936866252489004186

`A004396(A004396(n))+A315727(n)-A004396(n)`
-/

namespace A315669.P12936866252489004186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315727 n - A004396 n)

end

end A315669.P12936866252489004186

namespace A315669

/-- `A004396(A004396(n))+A315727(n)-A004396(n)` -/
def P12936866252489004186.Spec : Prop :=
  ∀ n, P12936866252489004186.a n = A315669 n

end A315669

/-! ## A315669.P17927706514119267519

`A315631(n)+A004525(A315680(n)-A315631(n))`
-/

namespace A315669.P17927706514119267519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315631 n + A004525 (A315680 n - A315631 n).toNat

end

end A315669.P17927706514119267519

namespace A315669

/-- `A315631(n)+A004525(A315680(n)-A315631(n))` -/
def P17927706514119267519.Spec : Prop :=
  ∀ n, P17927706514119267519.a n = A315669 n

end A315669

/-! ## A315669.P7229097784350178930

`A005843(A313683(n))-A311816(n)`
-/

namespace A315669.P7229097784350178930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313683 n).toNat - A311816 n

end

end A315669.P7229097784350178930

namespace A315669

/-- `A005843(A313683(n))-A311816(n)` -/
def P7229097784350178930.Spec : Prop :=
  ∀ n, P7229097784350178930.a n = A315669 n

end A315669

/-! ## A315669.P895128885525255676

`A005843(A008706(n))-A312207(n)`
-/

namespace A315669.P895128885525255676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312207 n

end

end A315669.P895128885525255676

namespace A315669

/-- `A005843(A008706(n))-A312207(n)` -/
def P895128885525255676.Spec : Prop :=
  ∀ n, P895128885525255676.a n = A315669 n

end A315669

/-! ## A315669.P1386045662885794282

`A042965(A315680(n)+1)-2*n`
-/

namespace A315669.P1386045662885794282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A315680 n + 1).toNat - (2 * n : ℤ)

end

end A315669.P1386045662885794282

namespace A315669

/-- `A042965(A315680(n)+1)-2*n` -/
def P1386045662885794282.Spec : Prop :=
  ∀ n, P1386045662885794282.a n = A315669 n

end A315669

/-! ## A315669.P4795974481369525119

`A004525(A315680(n)+A315631(n))`
-/

namespace A315669.P4795974481369525119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315680 n + A315631 n).toNat

end

end A315669.P4795974481369525119

namespace A315669

/-- `A004525(A315680(n)+A315631(n))` -/
def P4795974481369525119.Spec : Prop :=
  ∀ n, P4795974481369525119.a n = A315669 n

end A315669

/-!
# A315670: Coordination sequence Gal.6.262.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315670, the canonical program `A315670.P4155248808049658205` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315670 has offset 0).

The definition of A315670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315670.P2699209084961636525

`A314201(n)+A128834(n)`
-/

namespace A315670.P2699209084961636525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314201 n + A128834 n

end

end A315670.P2699209084961636525

namespace A315670

/-- `A314201(n)+A128834(n)` -/
def P2699209084961636525.Spec : Prop :=
  ∀ n, P2699209084961636525.a n = A315670 n

end A315670

/-! ## A315670.P4155248808049658205

`A315395(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315670

/-- `A315395(n)+∑[A021913(n)]` -/
def P4155248808049658205.Spec : Prop :=
  ∀ n, P4155248808049658205.a n = A315670 n

theorem P4155248808049658205.correct : P4155248808049658205.Spec := by
  intro n
  simp only [A315670]

end A315670

/-! ## A315670.P10025886338639700264

`A315395(n)+Δ[A011848(n)]`
-/

namespace A315670.P10025886338639700264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315395 n + (f1 (n + 1) - f1 n)

end

end A315670.P10025886338639700264

namespace A315670

/-- `A315395(n)+Δ[A011848(n)]` -/
def P10025886338639700264.Spec : Prop :=
  ∀ n, P10025886338639700264.a n = A315670 n

end A315670

/-! ## A315670.P11306305569538840343

`A315395(n)+A004524(n+1)`
-/

namespace A315670.P11306305569538840343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315395 n + A004524 (n + 1)

end

end A315670.P11306305569538840343

namespace A315670

/-- `A315395(n)+A004524(n+1)` -/
def P11306305569538840343.Spec : Prop :=
  ∀ n, P11306305569538840343.a n = A315670 n

end A315670

/-! ## A315670.P16538819544369590144

`A314201(n)-A010892(n+2)`
-/

namespace A315670.P16538819544369590144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314201 n - A010892 (n + 2)

end

end A315670.P16538819544369590144

namespace A315670

/-- `A314201(n)-A010892(n+2)` -/
def P16538819544369590144.Spec : Prop :=
  ∀ n, P16538819544369590144.a n = A315670 n

end A315670

/-! ## A315670.P886351523858070852

`A314085(n)+A004525(A004396(n))`
-/

namespace A315670.P886351523858070852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314085 n + A004525 (A004396 n).toNat

end

end A315670.P886351523858070852

namespace A315670

/-- `A314085(n)+A004525(A004396(n))` -/
def P886351523858070852.Spec : Prop :=
  ∀ n, P886351523858070852.a n = A315670 n

theorem P886351523858070852.correct : P886351523858070852.Spec := by
  intro n
  simp only [A315670, Nat.add_sub_cancel, A315670.P886351523858070852.a, A315670.P4155248808049658205.f1, A315670.P4155248808049658205.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A021913, A021913.P3902253882929539198.a, A314085, A314085.P6510588875040797776.a, A315395, A315395.P11298806320610192218.a, A046978, A046978.P71107966793699888.a, A313485, A313485.P7677676480922091384.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315670

/-! ## A315670.P8796304509136639626

`abs(A008592(n)-A312206(n))`
-/

namespace A315670.P8796304509136639626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312206 n|

end

end A315670.P8796304509136639626

namespace A315670

/-- `abs(A008592(n)-A312206(n))` -/
def P8796304509136639626.Spec : Prop :=
  ∀ n, P8796304509136639626.a n = A315670 n

end A315670

/-! ## A315670.P5508058771104476829

`floor(A010015(n)/A312206(n))`
-/

namespace A315670.P5508058771104476829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A312206 n : ℚ)⌋

end

end A315670.P5508058771104476829

namespace A315670

/-- `floor(A010015(n)/A312206(n))` -/
def P5508058771104476829.Spec : Prop :=
  ∀ n, P5508058771104476829.a n = A315670 n

end A315670

/-! ## A315670.P13712149202893091245

`2*A008706(n)-A312206(n)`
-/

namespace A315670.P13712149202893091245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312206 n

end

end A315670.P13712149202893091245

namespace A315670

/-- `2*A008706(n)-A312206(n)` -/
def P13712149202893091245.Spec : Prop :=
  ∀ n, P13712149202893091245.a n = A315670 n

end A315670

/-! ## A315670.P7416861528046613923

`A008458(n)+A008574(n)-A312206(n)`
-/

namespace A315670.P7416861528046613923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312206 n)

end

end A315670.P7416861528046613923

namespace A315670

/-- `A008458(n)+A008574(n)-A312206(n)` -/
def P7416861528046613923.Spec : Prop :=
  ∀ n, P7416861528046613923.a n = A315670 n

end A315670

/-! ## A315670.P18199301157845266023

`A004525(A004396(n))+A315738(n)-A004396(n)`
-/

namespace A315670.P18199301157845266023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315738 n - A004396 n)

end

end A315670.P18199301157845266023

namespace A315670

/-- `A004525(A004396(n))+A315738(n)-A004396(n)` -/
def P18199301157845266023.Spec : Prop :=
  ∀ n, P18199301157845266023.a n = A315670 n

end A315670

/-! ## A315670.P6719482862130138272

`A005843(A008706(n))-A312206(n)`
-/

namespace A315670.P6719482862130138272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312206 n

end

end A315670.P6719482862130138272

namespace A315670

/-- `A005843(A008706(n))-A312206(n)` -/
def P6719482862130138272.Spec : Prop :=
  ∀ n, P6719482862130138272.a n = A315670 n

end A315670

/-! ## A315670.P17746141454969529857

`A074067(A312206(n))`
-/

namespace A315670.P17746141454969529857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A312206 n).toNat

end

end A315670.P17746141454969529857

namespace A315670

/-- `A074067(A312206(n))` -/
def P17746141454969529857.Spec : Prop :=
  ∀ n, P17746141454969529857.a n = A315670 n

end A315670

/-!
# A315671: Coordination sequence Gal.4.56.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315671, the canonical program `A315671.P3317811173439516931` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315671 has offset 0).

The definition of A315671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315671.P15823956578352148245

`A314112(n)+A046978(n)`
-/

namespace A315671.P15823956578352148245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314112 n + A046978 n

end

end A315671.P15823956578352148245

namespace A315671

/-- `A314112(n)+A046978(n)` -/
def P15823956578352148245.Spec : Prop :=
  ∀ n, P15823956578352148245.a n = A315671 n

end A315671

/-! ## A315671.P3317811173439516931

`abs(A008592(n)-A312205(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315671

/-- `abs(A008592(n)-A312205(n))` -/
def P3317811173439516931.Spec : Prop :=
  ∀ n, P3317811173439516931.a n = A315671 n

theorem P3317811173439516931.correct : P3317811173439516931.Spec := by
  intro n
  simp only [A315671]

end A315671

/-! ## A315671.P4059467307780207615

`A315399(n)+∑[A021913(n)]`
-/

namespace A315671.P4059467307780207615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315671.P4059467307780207615

namespace A315671

/-- `A315399(n)+∑[A021913(n)]` -/
def P4059467307780207615.Spec : Prop :=
  ∀ n, P4059467307780207615.a n = A315671 n

end A315671

/-! ## A315671.P6459117014393399621

`A315399(n)+Δ[A011848(n)]`
-/

namespace A315671.P6459117014393399621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + (f1 (n + 1) - f1 n)

end

end A315671.P6459117014393399621

namespace A315671

/-- `A315399(n)+Δ[A011848(n)]` -/
def P6459117014393399621.Spec : Prop :=
  ∀ n, P6459117014393399621.a n = A315671 n

end A315671

/-! ## A315671.P11304706943303398130

`A315632(n)+Δ[A011861(n)]`
-/

namespace A315671.P11304706943303398130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315632 n + (f1 (n + 1) - f1 n)

end

end A315671.P11304706943303398130

namespace A315671

/-- `A315632(n)+Δ[A011861(n)]` -/
def P11304706943303398130.Spec : Prop :=
  ∀ n, P11304706943303398130.a n = A315671 n

end A315671

/-! ## A315671.P4786046244368954617

`A315399(n)+A004524(n+1)`
-/

namespace A315671.P4786046244368954617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + A004524 (n + 1)

end

end A315671.P4786046244368954617

namespace A315671

/-- `A315399(n)+A004524(n+1)` -/
def P4786046244368954617.Spec : Prop :=
  ∀ n, P4786046244368954617.a n = A315671 n

end A315671

/-! ## A315671.P15584356029625713856

`A315399(n)+n-A004525(n)`
-/

namespace A315671.P15584356029625713856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + ((n : ℤ) - A004525 n)

end

end A315671.P15584356029625713856

namespace A315671

/-- `A315399(n)+n-A004525(n)` -/
def P15584356029625713856.Spec : Prop :=
  ∀ n, P15584356029625713856.a n = A315671 n

end A315671

/-! ## A315671.P1151375280194094348

`A314090(n)+A004525(A004525(n))`
-/

namespace A315671.P1151375280194094348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A004525 (A004525 n).toNat

end

end A315671.P1151375280194094348

namespace A315671

/-- `A314090(n)+A004525(A004525(n))` -/
def P1151375280194094348.Spec : Prop :=
  ∀ n, P1151375280194094348.a n = A315671 n

end A315671

/-! ## A315671.P14864914300976499740

`A008458(n)+A008574(n)-A312205(n)`
-/

namespace A315671.P14864914300976499740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312205 n)

end

end A315671.P14864914300976499740

namespace A315671

/-- `A008458(n)+A008574(n)-A312205(n)` -/
def P14864914300976499740.Spec : Prop :=
  ∀ n, P14864914300976499740.a n = A315671 n

end A315671

/-! ## A315671.P18382328629563177854

`∑{d}[A008592(n)-A312205(n), A000010(#)]`
-/

namespace A315671.P18382328629563177854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315671.P18382328629563177854

namespace A315671

/-- `∑{d}[A008592(n)-A312205(n), A000010(#)]` -/
def P18382328629563177854.Spec : Prop :=
  ∀ n, P18382328629563177854.a n = A315671 n

end A315671

/-! ## A315671.P2751438961189226607

`A004525(A004525(n))+A315685(n)-A004525(n)`
-/

namespace A315671.P2751438961189226607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315685 n - A004525 n)

end

end A315671.P2751438961189226607

namespace A315671

/-- `A004525(A004525(n))+A315685(n)-A004525(n)` -/
def P2751438961189226607.Spec : Prop :=
  ∀ n, P2751438961189226607.a n = A315671 n

end A315671

/-! ## A315671.P2029234526269869046

`A315469(n)+A046978(n-A046978(n))`
-/

namespace A315671.P2029234526269869046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A315671.P2029234526269869046

namespace A315671

/-- `A315469(n)+A046978(n-A046978(n))` -/
def P2029234526269869046.Spec : Prop :=
  ∀ n, P2029234526269869046.a n = A315671 n

end A315671

/-! ## A315671.P13554004997919782796

`A046978(n)+A004525(A313875(2*n))`
-/

namespace A315671.P13554004997919782796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + A004525 (A313875 (2 * n)).toNat

end

end A315671.P13554004997919782796

namespace A315671

/-- `A046978(n)+A004525(A313875(2*n))` -/
def P13554004997919782796.Spec : Prop :=
  ∀ n, P13554004997919782796.a n = A315671 n

end A315671

/-!
# A315672: Coordination sequence Gal.5.139.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315672, the canonical program `A315672.P4140044369733124398` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315672 has offset 0).

The definition of A315672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315672.P4140044369733124398

`abs(A008592(n)-A312195(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315672

/-- `abs(A008592(n)-A312195(n))` -/
def P4140044369733124398.Spec : Prop :=
  ∀ n, P4140044369733124398.a n = A315672 n

theorem P4140044369733124398.correct : P4140044369733124398.Spec := by
  intro n
  simp only [A315672]

end A315672

/-! ## A315672.P8395663752831685240

`2*A008706(n)-A312195(n)`
-/

namespace A315672.P8395663752831685240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312195 n

end

end A315672.P8395663752831685240

namespace A315672

/-- `2*A008706(n)-A312195(n)` -/
def P8395663752831685240.Spec : Prop :=
  ∀ n, P8395663752831685240.a n = A315672 n

end A315672

/-! ## A315672.P9448072480074676764

`A008458(n)+A008574(n)-A312195(n)`
-/

namespace A315672.P9448072480074676764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312195 n)

end

end A315672.P9448072480074676764

namespace A315672

/-- `A008458(n)+A008574(n)-A312195(n)` -/
def P9448072480074676764.Spec : Prop :=
  ∀ n, P9448072480074676764.a n = A315672 n

end A315672

/-! ## A315672.P15902258700231982119

`A312195(n)+A005843(A008706(n)-A312195(n))`
-/

namespace A315672.P15902258700231982119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312195 n + A005843 (A008706 n - A312195 n).toNat

end

end A315672.P15902258700231982119

namespace A315672

/-- `A312195(n)+A005843(A008706(n)-A312195(n))` -/
def P15902258700231982119.Spec : Prop :=
  ∀ n, P15902258700231982119.a n = A315672 n

end A315672

/-! ## A315672.P4640412603893485005

`A330025(A330025(n)+n)+A314111(n)`
-/

namespace A315672.P4640412603893485005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314111 n

end

end A315672.P4640412603893485005

namespace A315672

/-- `A330025(A330025(n)+n)+A314111(n)` -/
def P4640412603893485005.Spec : Prop :=
  ∀ n, P4640412603893485005.a n = A315672 n

end A315672

/-! ## A315672.P14400558692374981743

`A313752(n)+A253262(n)`
-/

namespace A315672.P14400558692374981743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n + A253262 n

end

end A315672.P14400558692374981743

namespace A315672

/-- `A313752(n)+A253262(n)` -/
def P14400558692374981743.Spec : Prop :=
  ∀ n, P14400558692374981743.a n = A315672 n

end A315672

/-! ## A315672.P5414278168619199161

`A330025(n)+A314100(n)`
-/

namespace A315672.P5414278168619199161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314100 n

end

end A315672.P5414278168619199161

namespace A315672

/-- `A330025(n)+A314100(n)` -/
def P5414278168619199161.Spec : Prop :=
  ∀ n, P5414278168619199161.a n = A315672 n

end A315672

/-! ## A315672.P3928993526392639910

`2*n+A004396(A315630(n))`
-/

namespace A315672.P3928993526392639910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315630 n).toNat

end

end A315672.P3928993526392639910

namespace A315672

/-- `2*n+A004396(A315630(n))` -/
def P3928993526392639910.Spec : Prop :=
  ∀ n, P3928993526392639910.a n = A315672 n

end A315672

/-! ## A315672.P13766340476696437144

`A008585(n)-(n-A004396(A315630(n)))`
-/

namespace A315672.P13766340476696437144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315630 n).toNat)

end

end A315672.P13766340476696437144

namespace A315672

/-- `A008585(n)-(n-A004396(A315630(n)))` -/
def P13766340476696437144.Spec : Prop :=
  ∀ n, P13766340476696437144.a n = A315672 n

end A315672

/-! ## A315672.P6692739048789145159

`A005843(A008706(n))-A312195(n)`
-/

namespace A315672.P6692739048789145159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312195 n

end

end A315672.P6692739048789145159

namespace A315672

/-- `A005843(A008706(n))-A312195(n)` -/
def P6692739048789145159.Spec : Prop :=
  ∀ n, P6692739048789145159.a n = A315672 n

end A315672

/-! ## A315672.P239799417045116520

`A004396(2*A313476(n)-n)`
-/

namespace A315672.P239799417045116520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313476 n - (n : ℤ)).toNat

end

end A315672.P239799417045116520

namespace A315672

/-- `A004396(2*A313476(n)-n)` -/
def P239799417045116520.Spec : Prop :=
  ∀ n, P239799417045116520.a n = A315672 n

end A315672

/-! ## A315672.P3872594563958430894

`A004396(A315630(n)+A008585(n))`
-/

namespace A315672.P3872594563958430894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315630 n + A008585 n).toNat

end

end A315672.P3872594563958430894

namespace A315672

/-- `A004396(A315630(n)+A008585(n))` -/
def P3872594563958430894.Spec : Prop :=
  ∀ n, P3872594563958430894.a n = A315672 n

end A315672

/-! ## A315672.P5087518117472053944

`A004396(A005843(A313476(n))-n)`
-/

namespace A315672.P5087518117472053944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313476 n).toNat - (n : ℤ)).toNat

end

end A315672.P5087518117472053944

namespace A315672

/-- `A004396(A005843(A313476(n))-n)` -/
def P5087518117472053944.Spec : Prop :=
  ∀ n, P5087518117472053944.a n = A315672 n

end A315672

/-! ## A315672.P6445075696641698052

`A004396(A313476(n)+A313476(n)-n)`
-/

namespace A315672.P6445075696641698052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313476 n + (A313476 n - (n : ℤ))).toNat

end

end A315672.P6445075696641698052

namespace A315672

/-- `A004396(A313476(n)+A313476(n)-n)` -/
def P6445075696641698052.Spec : Prop :=
  ∀ n, P6445075696641698052.a n = A315672 n

end A315672

/-! ## A315672.P18323707490329923409

`A004396(A313476(n)-(n-A313476(n)))`
-/

namespace A315672.P18323707490329923409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313476 n - ((n : ℤ) - A313476 n)).toNat

end

end A315672.P18323707490329923409

namespace A315672

/-- `A004396(A313476(n)-(n-A313476(n)))` -/
def P18323707490329923409.Spec : Prop :=
  ∀ n, P18323707490329923409.a n = A315672 n

end A315672

/-!
# A315673: Coordination sequence Gal.6.347.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315673, the canonical program `A315673.P9942185892903368555` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315673 has offset 0).

The definition of A315673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315673.P9942185892903368555

`abs(A008592(n)-A312194(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315673

/-- `abs(A008592(n)-A312194(n))` -/
def P9942185892903368555.Spec : Prop :=
  ∀ n, P9942185892903368555.a n = A315673 n

theorem P9942185892903368555.correct : P9942185892903368555.Spec := by
  intro n
  simp only [A315673]

end A315673

/-! ## A315673.P17485095291580910504

`2*A008706(n)-A312194(n)`
-/

namespace A315673.P17485095291580910504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312194 n

end

end A315673.P17485095291580910504

namespace A315673

/-- `2*A008706(n)-A312194(n)` -/
def P17485095291580910504.Spec : Prop :=
  ∀ n, P17485095291580910504.a n = A315673 n

end A315673

/-! ## A315673.P5194940198337583690

`A314089(n)+A004396(A004525(n))`
-/

namespace A315673.P5194940198337583690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A004396 (A004525 n).toNat

end

end A315673.P5194940198337583690

namespace A315673

/-- `A314089(n)+A004396(A004525(n))` -/
def P5194940198337583690.Spec : Prop :=
  ∀ n, P5194940198337583690.a n = A315673 n

end A315673

/-! ## A315673.P16993414063280671838

`A314091(n)+A004525(A004396(n))`
-/

namespace A315673.P16993414063280671838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A004525 (A004396 n).toNat

end

end A315673.P16993414063280671838

namespace A315673

/-- `A314091(n)+A004525(A004396(n))` -/
def P16993414063280671838.Spec : Prop :=
  ∀ n, P16993414063280671838.a n = A315673 n

end A315673

/-! ## A315673.P17217655407731316389

`A008458(n)+A008574(n)-A312194(n)`
-/

namespace A315673.P17217655407731316389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312194 n)

end

end A315673.P17217655407731316389

namespace A315673

/-- `A008458(n)+A008574(n)-A312194(n)` -/
def P17217655407731316389.Spec : Prop :=
  ∀ n, P17217655407731316389.a n = A315673 n

end A315673

/-! ## A315673.P4588626409332751009

`A313680(n)+n-A002264(A030118(n))`
-/

namespace A315673.P4588626409332751009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + ((n : ℤ) - A002264 (A030118 n).toNat)

end

end A315673.P4588626409332751009

namespace A315673

/-- `A313680(n)+n-A002264(A030118(n))` -/
def P4588626409332751009.Spec : Prop :=
  ∀ n, P4588626409332751009.a n = A315673 n

end A315673

/-! ## A315673.P1657793394275935085

`∑{d}[A008592(n)-A312194(n), A000010(#)]`
-/

namespace A315673.P1657793394275935085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315673.P1657793394275935085

namespace A315673

/-- `∑{d}[A008592(n)-A312194(n), A000010(#)]` -/
def P1657793394275935085.Spec : Prop :=
  ∀ n, P1657793394275935085.a n = A315673 n

end A315673

/-! ## A315673.P2705756480037917761

`A004396(A004525(n))+A315683(n)-A004525(n)`
-/

namespace A315673.P2705756480037917761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315683 n - A004525 n)

end

end A315673.P2705756480037917761

namespace A315673

/-- `A004396(A004525(n))+A315683(n)-A004525(n)` -/
def P2705756480037917761.Spec : Prop :=
  ∀ n, P2705756480037917761.a n = A315673 n

end A315673

/-! ## A315673.P4907312880554614429

`A312194(n)+A005843(A008706(n)-A312194(n))`
-/

namespace A315673.P4907312880554614429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312194 n + A005843 (A008706 n - A312194 n).toNat

end

end A315673.P4907312880554614429

namespace A315673

/-- `A312194(n)+A005843(A008706(n)-A312194(n))` -/
def P4907312880554614429.Spec : Prop :=
  ∀ n, P4907312880554614429.a n = A315673 n

end A315673

/-! ## A315673.P9274107770936457569

`A315515(n)+∑[A131736(n)]`
-/

namespace A315673.P9274107770936457569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315673.P9274107770936457569

namespace A315673

/-- `A315515(n)+∑[A131736(n)]` -/
def P9274107770936457569.Spec : Prop :=
  ∀ n, P9274107770936457569.a n = A315673 n

end A315673

/-! ## A315673.P17271372103436302554

`A314110(n)+A134667(A004525(n))`
-/

namespace A315673.P17271372103436302554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n + A134667 (A004525 n).toNat

end

end A315673.P17271372103436302554

namespace A315673

/-- `A314110(n)+A134667(A004525(n))` -/
def P17271372103436302554.Spec : Prop :=
  ∀ n, P17271372103436302554.a n = A315673 n

end A315673

/-! ## A315673.P1987654711846765589

`A315741(n)-A002264(A030118(n))`
-/

namespace A315673.P1987654711846765589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - A002264 (A030118 n).toNat

end

end A315673.P1987654711846765589

namespace A315673

/-- `A315741(n)-A002264(A030118(n))` -/
def P1987654711846765589.Spec : Prop :=
  ∀ n, P1987654711846765589.a n = A315673 n

end A315673

/-! ## A315673.P7920277991436860704

`A004525(A004396(n))+A315741(n)-A004396(n)`
-/

namespace A315673.P7920277991436860704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315741 n - A004396 n)

end

end A315673.P7920277991436860704

namespace A315673

/-- `A004525(A004396(n))+A315741(n)-A004396(n)` -/
def P7920277991436860704.Spec : Prop :=
  ∀ n, P7920277991436860704.a n = A315673 n

end A315673

/-! ## A315673.P4437168944366568435

`A005843(A008706(n))-A312194(n)`
-/

namespace A315673.P4437168944366568435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312194 n

end

end A315673.P4437168944366568435

namespace A315673

/-- `A005843(A008706(n))-A312194(n)` -/
def P4437168944366568435.Spec : Prop :=
  ∀ n, P4437168944366568435.a n = A315673 n

end A315673

/-!
# A315674: Coordination sequence Gal.6.353.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315674, the canonical program `A315674.P14654524120462468787` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315674 has offset 0).

The definition of A315674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315674.P14654524120462468787

`abs(A008592(n)-A312185(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315674

/-- `abs(A008592(n)-A312185(n))` -/
def P14654524120462468787.Spec : Prop :=
  ∀ n, P14654524120462468787.a n = A315674 n

theorem P14654524120462468787.correct : P14654524120462468787.Spec := by
  intro n
  simp only [A315674]

end A315674

/-! ## A315674.P16774767961037300171

`2*A008706(n)-A312185(n)`
-/

namespace A315674.P16774767961037300171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312185 n

end

end A315674.P16774767961037300171

namespace A315674

/-- `2*A008706(n)-A312185(n)` -/
def P16774767961037300171.Spec : Prop :=
  ∀ n, P16774767961037300171.a n = A315674 n

end A315674

/-! ## A315674.P6765132499496126296

`A008458(n)+A008574(n)-A312185(n)`
-/

namespace A315674.P6765132499496126296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312185 n)

end

end A315674.P6765132499496126296

namespace A315674

/-- `A008458(n)+A008574(n)-A312185(n)` -/
def P6765132499496126296.Spec : Prop :=
  ∀ n, P6765132499496126296.a n = A315674 n

end A315674

/-! ## A315674.P6145137896856525080

`A312185(n)+A005843(A008706(n)-A312185(n))`
-/

namespace A315674.P6145137896856525080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312185 n + A005843 (A008706 n - A312185 n).toNat

end

end A315674.P6145137896856525080

namespace A315674

/-- `A312185(n)+A005843(A008706(n)-A312185(n))` -/
def P6145137896856525080.Spec : Prop :=
  ∀ n, P6145137896856525080.a n = A315674 n

end A315674

/-! ## A315674.P2007214730744291029

`2*n+A004396(A315633(n))`
-/

namespace A315674.P2007214730744291029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315633 n).toNat

end

end A315674.P2007214730744291029

namespace A315674

/-- `2*n+A004396(A315633(n))` -/
def P2007214730744291029.Spec : Prop :=
  ∀ n, P2007214730744291029.a n = A315674 n

end A315674

/-! ## A315674.P17235120725634127995

`A008585(n)+A004396(A315633(n))-n`
-/

namespace A315674.P17235120725634127995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A315633 n).toNat - (n : ℤ))

end

end A315674.P17235120725634127995

namespace A315674

/-- `A008585(n)+A004396(A315633(n))-n` -/
def P17235120725634127995.Spec : Prop :=
  ∀ n, P17235120725634127995.a n = A315674 n

end A315674

/-! ## A315674.P5400104711598192243

`A005843(A008706(n))-A312185(n)`
-/

namespace A315674.P5400104711598192243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312185 n

end

end A315674.P5400104711598192243

namespace A315674

/-- `A005843(A008706(n))-A312185(n)` -/
def P5400104711598192243.Spec : Prop :=
  ∀ n, P5400104711598192243.a n = A315674 n

end A315674

/-! ## A315674.P16827153403103621658

`A004396(A315633(n)+A008486(n))`
-/

namespace A315674.P16827153403103621658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315633 n + A008486 n).toNat

end

end A315674.P16827153403103621658

namespace A315674

/-- `A004396(A315633(n)+A008486(n))` -/
def P16827153403103621658.Spec : Prop :=
  ∀ n, P16827153403103621658.a n = A315674 n

end A315674

/-! ## A315674.P16038682616511698968

`A004396(A315633(n)+A008585(n))`
-/

namespace A315674.P16038682616511698968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315633 n + A008585 n).toNat

end

end A315674.P16038682616511698968

namespace A315674

/-- `A004396(A315633(n)+A008585(n))` -/
def P16038682616511698968.Spec : Prop :=
  ∀ n, P16038682616511698968.a n = A315674 n

end A315674

/-! ## A315674.P3028746538173010056

`A274616(A315633(n)+A008585(n))`
-/

namespace A315674.P3028746538173010056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315633 n + A008585 n).toNat

end

end A315674.P3028746538173010056

namespace A315674

/-- `A274616(A315633(n)+A008585(n))` -/
def P3028746538173010056.Spec : Prop :=
  ∀ n, P3028746538173010056.a n = A315674 n

end A315674

/-! ## A315674.P10269318325542335688

`A004396(2*A315686(n)-A008486(n))`
-/

namespace A315674.P10269318325542335688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315686 n - A008486 n).toNat

end

end A315674.P10269318325542335688

namespace A315674

/-- `A004396(2*A315686(n)-A008486(n))` -/
def P10269318325542335688.Spec : Prop :=
  ∀ n, P10269318325542335688.a n = A315674 n

end A315674

/-! ## A315674.P17352109887497695162

`A004396(2*A315686(n)-A008585(n))`
-/

namespace A315674.P17352109887497695162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315686 n - A008585 n).toNat

end

end A315674.P17352109887497695162

namespace A315674

/-- `A004396(2*A315686(n)-A008585(n))` -/
def P17352109887497695162.Spec : Prop :=
  ∀ n, P17352109887497695162.a n = A315674 n

end A315674

/-! ## A315674.P8962055021408029806

`A004396(A315686(n)+A315686(n)-A008486(n))`
-/

namespace A315674.P8962055021408029806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n + (A315686 n - A008486 n)).toNat

end

end A315674.P8962055021408029806

namespace A315674

/-- `A004396(A315686(n)+A315686(n)-A008486(n))` -/
def P8962055021408029806.Spec : Prop :=
  ∀ n, P8962055021408029806.a n = A315674 n

end A315674

/-! ## A315674.P7813459924907268023

`A004396(A315686(n)+A315686(n)-A008585(n))`
-/

namespace A315674.P7813459924907268023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n + (A315686 n - A008585 n)).toNat

end

end A315674.P7813459924907268023

namespace A315674

/-- `A004396(A315686(n)+A315686(n)-A008585(n))` -/
def P7813459924907268023.Spec : Prop :=
  ∀ n, P7813459924907268023.a n = A315674 n

end A315674

/-! ## A315674.P3832693553375001945

`A004396(A315686(n)-(A008486(n)-A315686(n)))`
-/

namespace A315674.P3832693553375001945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n - (A008486 n - A315686 n)).toNat

end

end A315674.P3832693553375001945

namespace A315674

/-- `A004396(A315686(n)-(A008486(n)-A315686(n)))` -/
def P3832693553375001945.Spec : Prop :=
  ∀ n, P3832693553375001945.a n = A315674 n

end A315674

/-! ## A315674.P9914720454719990196

`A004396(A315686(n)-(A008585(n)-A315686(n)))`
-/

namespace A315674.P9914720454719990196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n - (A008585 n - A315686 n)).toNat

end

end A315674.P9914720454719990196

namespace A315674

/-- `A004396(A315686(n)-(A008585(n)-A315686(n)))` -/
def P9914720454719990196.Spec : Prop :=
  ∀ n, P9914720454719990196.a n = A315674 n

end A315674

/-! ## A315674.P13050586504030939985

`A004396(2*A315686(n))-2*n`
-/

namespace A315674.P13050586504030939985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315686 n).toNat - (2 * n : ℤ)

end

end A315674.P13050586504030939985

namespace A315674

/-- `A004396(2*A315686(n))-2*n` -/
def P13050586504030939985.Spec : Prop :=
  ∀ n, P13050586504030939985.a n = A315674 n

end A315674

/-!
# A315675: Coordination sequence Gal.6.356.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315675, the canonical program `A315675.P17317459834281065460` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315675 has offset 0).

The definition of A315675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315675.P10029554166478136595

`abs(A008592(n)-A312184(n))`
-/

namespace A315675.P10029554166478136595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312184 n|

end

end A315675.P10029554166478136595

namespace A315675

/-- `abs(A008592(n)-A312184(n))` -/
def P10029554166478136595.Spec : Prop :=
  ∀ n, P10029554166478136595.a n = A315675 n

end A315675

/-! ## A315675.P17317459834281065460

`A315403(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315675

/-- `A315403(n)+∑[A021913(n)]` -/
def P17317459834281065460.Spec : Prop :=
  ∀ n, P17317459834281065460.a n = A315675 n

theorem P17317459834281065460.correct : P17317459834281065460.Spec := by
  intro n
  simp only [A315675]

end A315675

/-! ## A315675.P9908045235153607173

`A315403(n)+Δ[A011848(n)]`
-/

namespace A315675.P9908045235153607173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n + (f1 (n + 1) - f1 n)

end

end A315675.P9908045235153607173

namespace A315675

/-- `A315403(n)+Δ[A011848(n)]` -/
def P9908045235153607173.Spec : Prop :=
  ∀ n, P9908045235153607173.a n = A315675 n

end A315675

/-! ## A315675.P12790979004912211638

`2*A008706(n)-A312184(n)`
-/

namespace A315675.P12790979004912211638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312184 n

end

end A315675.P12790979004912211638

namespace A315675

/-- `2*A008706(n)-A312184(n)` -/
def P12790979004912211638.Spec : Prop :=
  ∀ n, P12790979004912211638.a n = A315675 n

end A315675

/-! ## A315675.P9311851611739215280

`A315403(n)+n-A004525(n)`
-/

namespace A315675.P9311851611739215280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n + ((n : ℤ) - A004525 n)

end

end A315675.P9311851611739215280

namespace A315675

/-- `A315403(n)+n-A004525(n)` -/
def P9311851611739215280.Spec : Prop :=
  ∀ n, P9311851611739215280.a n = A315675 n

end A315675

/-! ## A315675.P8168993683594880808

`A314094(n)+A004525(A004396(n))`
-/

namespace A315675.P8168993683594880808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + A004525 (A004396 n).toNat

end

end A315675.P8168993683594880808

namespace A315675

/-- `A314094(n)+A004525(A004396(n))` -/
def P8168993683594880808.Spec : Prop :=
  ∀ n, P8168993683594880808.a n = A315675 n

end A315675

/-! ## A315675.P4567269296869734778

`A008458(n)+A008574(n)-A312184(n)`
-/

namespace A315675.P4567269296869734778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312184 n)

end

end A315675.P4567269296869734778

namespace A315675

/-- `A008458(n)+A008574(n)-A312184(n)` -/
def P4567269296869734778.Spec : Prop :=
  ∀ n, P4567269296869734778.a n = A315675 n

end A315675

/-! ## A315675.P6507016920079956629

`A312184(n)+A005843(A008706(n)-A312184(n))`
-/

namespace A315675.P6507016920079956629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A005843 (A008706 n - A312184 n).toNat

end

end A315675.P6507016920079956629

namespace A315675

/-- `A312184(n)+A005843(A008706(n)-A312184(n))` -/
def P6507016920079956629.Spec : Prop :=
  ∀ n, P6507016920079956629.a n = A315675 n

end A315675

/-! ## A315675.P7005619538351235620

`A314208(n)+A128834(n)`
-/

namespace A315675.P7005619538351235620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n + A128834 n

end

end A315675.P7005619538351235620

namespace A315675

/-- `A314208(n)+A128834(n)` -/
def P7005619538351235620.Spec : Prop :=
  ∀ n, P7005619538351235620.a n = A315675 n

end A315675

/-! ## A315675.P10995893682318247521

`A314208(n)-A010892(n+2)`
-/

namespace A315675.P10995893682318247521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n - A010892 (n + 2)

end

end A315675.P10995893682318247521

namespace A315675

/-- `A314208(n)-A010892(n+2)` -/
def P10995893682318247521.Spec : Prop :=
  ∀ n, P10995893682318247521.a n = A315675 n

end A315675

/-! ## A315675.P11954641143528684034

`A005843(A008706(n))-A312184(n)`
-/

namespace A315675.P11954641143528684034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312184 n

end

end A315675.P11954641143528684034

namespace A315675

/-- `A005843(A008706(n))-A312184(n)` -/
def P11954641143528684034.Spec : Prop :=
  ∀ n, P11954641143528684034.a n = A315675 n

end A315675

/-! ## A315675.P6086001795942725175

`A004396(2*A313485(n)-n)`
-/

namespace A315675.P6086001795942725175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313485 n - (n : ℤ)).toNat

end

end A315675.P6086001795942725175

namespace A315675

/-- `A004396(2*A313485(n)-n)` -/
def P6086001795942725175.Spec : Prop :=
  ∀ n, P6086001795942725175.a n = A315675 n

end A315675

/-! ## A315675.P6353143089954239491

`A004396(A313485(n)+A313485(n)-n)`
-/

namespace A315675.P6353143089954239491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313485 n + (A313485 n - (n : ℤ))).toNat

end

end A315675.P6353143089954239491

namespace A315675

/-- `A004396(A313485(n)+A313485(n)-n)` -/
def P6353143089954239491.Spec : Prop :=
  ∀ n, P6353143089954239491.a n = A315675 n

end A315675

/-! ## A315675.P14563822874803089649

`A004396(A313485(n)-(n-A313485(n)))`
-/

namespace A315675.P14563822874803089649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313485 n - ((n : ℤ) - A313485 n)).toNat

end

end A315675.P14563822874803089649

namespace A315675

/-- `A004396(A313485(n)-(n-A313485(n)))` -/
def P14563822874803089649.Spec : Prop :=
  ∀ n, P14563822874803089649.a n = A315675 n

end A315675

/-!
# A315676: Coordination sequence Gal.4.75.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315676, the canonical program `A315676.P8029250797834690021` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315676 has offset 0).

The definition of A315676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315676.P8029250797834690021

`abs(A008592(n)-A312183(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315676

/-- `abs(A008592(n)-A312183(n))` -/
def P8029250797834690021.Spec : Prop :=
  ∀ n, P8029250797834690021.a n = A315676 n

theorem P8029250797834690021.correct : P8029250797834690021.Spec := by
  intro n
  simp only [A315676]

end A315676

/-! ## A315676.P15971083759551143031

`A315634(n)+Δ[A011860(n)]`
-/

namespace A315676.P15971083759551143031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n + (f1 (n + 1) - f1 n)

end

end A315676.P15971083759551143031

namespace A315676

/-- `A315634(n)+Δ[A011860(n)]` -/
def P15971083759551143031.Spec : Prop :=
  ∀ n, P15971083759551143031.a n = A315676 n

end A315676

/-! ## A315676.P6415304420706144411

`2*A008706(n)-A312183(n)`
-/

namespace A315676.P6415304420706144411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312183 n

end

end A315676.P6415304420706144411

namespace A315676

/-- `2*A008706(n)-A312183(n)` -/
def P6415304420706144411.Spec : Prop :=
  ∀ n, P6415304420706144411.a n = A315676 n

end A315676

/-! ## A315676.P13610936195332979500

`A008458(n)+A008574(n)-A312183(n)`
-/

namespace A315676.P13610936195332979500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312183 n)

end

end A315676.P13610936195332979500

namespace A315676

/-- `A008458(n)+A008574(n)-A312183(n)` -/
def P13610936195332979500.Spec : Prop :=
  ∀ n, P13610936195332979500.a n = A315676 n

end A315676

/-! ## A315676.P3243461813448787437

`∑{d}[A008592(n)-A312183(n), A000010(#)]`
-/

namespace A315676.P3243461813448787437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315676.P3243461813448787437

namespace A315676

/-- `∑{d}[A008592(n)-A312183(n), A000010(#)]` -/
def P3243461813448787437.Spec : Prop :=
  ∀ n, P3243461813448787437.a n = A315676 n

end A315676

/-! ## A315676.P12944866667908981954

`A312183(n)+A005843(A008706(n)-A312183(n))`
-/

namespace A315676.P12944866667908981954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A005843 (A008706 n - A312183 n).toNat

end

end A315676.P12944866667908981954

namespace A315676

/-- `A312183(n)+A005843(A008706(n)-A312183(n))` -/
def P12944866667908981954.Spec : Prop :=
  ∀ n, P12944866667908981954.a n = A315676 n

end A315676

/-! ## A315676.P8896038622714224955

`A315511(n)+A238470(n)`
-/

namespace A315676.P8896038622714224955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n + A238470 n

end

end A315676.P8896038622714224955

namespace A315676

/-- `A315511(n)+A238470(n)` -/
def P8896038622714224955.Spec : Prop :=
  ∀ n, P8896038622714224955.a n = A315676 n

end A315676

/-! ## A315676.P2133875625786801336

`A005843(A008706(n))-A312183(n)`
-/

namespace A315676.P2133875625786801336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312183 n

end

end A315676.P2133875625786801336

namespace A315676

/-- `A005843(A008706(n))-A312183(n)` -/
def P2133875625786801336.Spec : Prop :=
  ∀ n, P2133875625786801336.a n = A315676 n

end A315676

/-! ## A315676.P7911839080855563792

`A005843(n)+A004396(A315634(n))`
-/

namespace A315676.P7911839080855563792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315634 n).toNat

end

end A315676.P7911839080855563792

namespace A315676

/-- `A005843(n)+A004396(A315634(n))` -/
def P7911839080855563792.Spec : Prop :=
  ∀ n, P7911839080855563792.a n = A315676 n

end A315676

/-! ## A315676.P17523242692940929195

`A008585(n)+A004396(A315634(n))-n`
-/

namespace A315676.P17523242692940929195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A315634 n).toNat - (n : ℤ))

end

end A315676.P17523242692940929195

namespace A315676

/-- `A008585(n)+A004396(A315634(n))-n` -/
def P17523242692940929195.Spec : Prop :=
  ∀ n, P17523242692940929195.a n = A315676 n

end A315676

/-! ## A315676.P10037441164930062726

`A004396(A008585(n))+A004396(A315634(n))`
-/

namespace A315676.P10037441164930062726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008585 n).toNat + A004396 (A315634 n).toNat

end

end A315676.P10037441164930062726

namespace A315676

/-- `A004396(A008585(n))+A004396(A315634(n))` -/
def P10037441164930062726.Spec : Prop :=
  ∀ n, P10037441164930062726.a n = A315676 n

end A315676

/-! ## A315676.P8600867325754450139

`A315647(n)-A238468(A238468(n)+n)`
-/

namespace A315676.P8600867325754450139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A238468 (A238468 n + (n : ℤ)).toNat

end

end A315676.P8600867325754450139

namespace A315676

/-- `A315647(n)-A238468(A238468(n)+n)` -/
def P8600867325754450139.Spec : Prop :=
  ∀ n, P8600867325754450139.a n = A315676 n

end A315676

/-! ## A315676.P5849561550471969947

`A004396(2*A313487(n)-n)`
-/

namespace A315676.P5849561550471969947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313487 n - (n : ℤ)).toNat

end

end A315676.P5849561550471969947

namespace A315676

/-- `A004396(2*A313487(n)-n)` -/
def P5849561550471969947.Spec : Prop :=
  ∀ n, P5849561550471969947.a n = A315676 n

end A315676

/-! ## A315676.P10838256282600177703

`A004396(A315634(n)+A008486(n))`
-/

namespace A315676.P10838256282600177703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315634 n + A008486 n).toNat

end

end A315676.P10838256282600177703

namespace A315676

/-- `A004396(A315634(n)+A008486(n))` -/
def P10838256282600177703.Spec : Prop :=
  ∀ n, P10838256282600177703.a n = A315676 n

end A315676

/-! ## A315676.P9871680798023159921

`A004396(A315634(n)+A008585(n))`
-/

namespace A315676.P9871680798023159921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315634 n + A008585 n).toNat

end

end A315676.P9871680798023159921

namespace A315676

/-- `A004396(A315634(n)+A008585(n))` -/
def P9871680798023159921.Spec : Prop :=
  ∀ n, P9871680798023159921.a n = A315676 n

end A315676

/-! ## A315676.P1595597229093840255

`A004396(A005843(A313487(n))-n)`
-/

namespace A315676.P1595597229093840255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313487 n).toNat - (n : ℤ)).toNat

end

end A315676.P1595597229093840255

namespace A315676

/-- `A004396(A005843(A313487(n))-n)` -/
def P1595597229093840255.Spec : Prop :=
  ∀ n, P1595597229093840255.a n = A315676 n

end A315676

/-! ## A315676.P15090929457388639177

`A004396(A313487(n)+A313487(n)-n)`
-/

namespace A315676.P15090929457388639177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313487 n + (A313487 n - (n : ℤ))).toNat

end

end A315676.P15090929457388639177

namespace A315676

/-- `A004396(A313487(n)+A313487(n)-n)` -/
def P15090929457388639177.Spec : Prop :=
  ∀ n, P15090929457388639177.a n = A315676 n

end A315676

/-! ## A315676.P1169616907729980855

`A004396(A313487(n)-(n-A313487(n)))`
-/

namespace A315676.P1169616907729980855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313487 n - ((n : ℤ) - A313487 n)).toNat

end

end A315676.P1169616907729980855

namespace A315676

/-- `A004396(A313487(n)-(n-A313487(n)))` -/
def P1169616907729980855.Spec : Prop :=
  ∀ n, P1169616907729980855.a n = A315676 n

end A315676

/-! ## A315676.P239049012429171973

`A274616(A315634(n)+A008585(n))`
-/

namespace A315676.P239049012429171973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315634 n + A008585 n).toNat

end

end A315676.P239049012429171973

namespace A315676

/-- `A274616(A315634(n)+A008585(n))` -/
def P239049012429171973.Spec : Prop :=
  ∀ n, P239049012429171973.a n = A315676 n

end A315676

/-!
# A315677: Coordination sequence Gal.6.666.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315677, there is no canonical definition to state claims against.
-/

/-! ## A315677.P6903821946245806659

`A315656(n)-A056594(A059423(n))`
-/

namespace A315677.P6903821946245806659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n - A056594 (A059423 n).toNat

end

end A315677.P6903821946245806659

/-! ## A315677.P4130008176015743378

`A315656(n)+A056594(A059423(n)+2)`
-/

namespace A315677.P4130008176015743378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315656 n + A056594 (A059423 n + 2).toNat

end

end A315677.P4130008176015743378

/-! ## A315677.P17948239435659799650

`A060308(3*n+1)-A160093(A222587(3*n+5))`
-/

namespace A315677.P17948239435659799650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (3 * n + 1) - A160093 (A222587 (3 * n + 5)).toNat

end

end A315677.P17948239435659799650

/-! ## A315677.P11839083748293428785

`A315694(n)-A144193(A047967(n)+A000009(n))`
-/

namespace A315677.P11839083748293428785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315694 n - A144193 (A047967 n + A000009 n).toNat

end

end A315677.P11839083748293428785

/-! ## A315677.P5270705346692972524

`A315694(n)-A144193(A167934(n)+A032741(n))`
-/

namespace A315677.P5270705346692972524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315694 n - A144193 (A167934 n + A032741 n).toNat

end

end A315677.P5270705346692972524

/-!
# A315678: Coordination sequence Gal.6.158.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315678, the canonical program `A315678.P12797774727885421403` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315678 has offset 0).

The definition of A315678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315678.P12797774727885421403

`abs(A008592(n)-A312163(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315678

/-- `abs(A008592(n)-A312163(n))` -/
def P12797774727885421403.Spec : Prop :=
  ∀ n, P12797774727885421403.a n = A315678 n

theorem P12797774727885421403.correct : P12797774727885421403.Spec := by
  intro n
  simp only [A315678]

end A315678

/-! ## A315678.P14515662109460820767

`2*A008706(n)-A312163(n)`
-/

namespace A315678.P14515662109460820767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312163 n

end

end A315678.P14515662109460820767

namespace A315678

/-- `2*A008706(n)-A312163(n)` -/
def P14515662109460820767.Spec : Prop :=
  ∀ n, P14515662109460820767.a n = A315678 n

end A315678

/-! ## A315678.P3572767187745540908

`2*A313718(n)-A312068(n)`
-/

namespace A315678.P3572767187745540908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313718 n - A312068 n

end

end A315678.P3572767187745540908

namespace A315678

/-- `2*A313718(n)-A312068(n)` -/
def P3572767187745540908.Spec : Prop :=
  ∀ n, P3572767187745540908.a n = A315678 n

end A315678

/-! ## A315678.P14679126007055445305

`A135042(2*n+1)-A312163(n)`
-/

namespace A315678.P14679126007055445305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312163 n

end

end A315678.P14679126007055445305

namespace A315678

/-- `A135042(2*n+1)-A312163(n)` -/
def P14679126007055445305.Spec : Prop :=
  ∀ n, P14679126007055445305.a n = A315678 n

end A315678

/-! ## A315678.P15353156087254724561

`A008458(n)+A008574(n)-A312163(n)`
-/

namespace A315678.P15353156087254724561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312163 n)

end

end A315678.P15353156087254724561

namespace A315678

/-- `A008458(n)+A008574(n)-A312163(n)` -/
def P15353156087254724561.Spec : Prop :=
  ∀ n, P15353156087254724561.a n = A315678 n

end A315678

/-! ## A315678.P18379772145320956775

`A008574(n)+A008588(n)%A312163(n)`
-/

namespace A315678.P18379772145320956775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (A008588 n) (A312163 n)

end

end A315678.P18379772145320956775

namespace A315678

/-- `A008574(n)+A008588(n)%A312163(n)` -/
def P18379772145320956775.Spec : Prop :=
  ∀ n, P18379772145320956775.a n = A315678 n

end A315678

/-! ## A315678.P17166386093322275040

`A312068(n)+A005843(A313718(n)-A312068(n))`
-/

namespace A315678.P17166386093322275040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + A005843 (A313718 n - A312068 n).toNat

end

end A315678.P17166386093322275040

namespace A315678

/-- `A312068(n)+A005843(A313718(n)-A312068(n))` -/
def P17166386093322275040.Spec : Prop :=
  ∀ n, P17166386093322275040.a n = A315678 n

end A315678

/-! ## A315678.P14791775594804968056

`A315736(n)-A004525(A315736(n)-A315667(n))`
-/

namespace A315678.P14791775594804968056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315736 n - A004525 (A315736 n - A315667 n).toNat

end

end A315678.P14791775594804968056

namespace A315678

/-- `A315736(n)-A004525(A315736(n)-A315667(n))` -/
def P14791775594804968056.Spec : Prop :=
  ∀ n, P14791775594804968056.a n = A315678 n

end A315678

/-! ## A315678.P13626148996060154727

`A005843(A313718(n))-A312068(n)`
-/

namespace A315678.P13626148996060154727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313718 n).toNat - A312068 n

end

end A315678.P13626148996060154727

namespace A315678

/-- `A005843(A313718(n))-A312068(n)` -/
def P13626148996060154727.Spec : Prop :=
  ∀ n, P13626148996060154727.a n = A315678 n

end A315678

/-! ## A315678.P3141292394974042427

`A005843(A008706(n))-A312163(n)`
-/

namespace A315678.P3141292394974042427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312163 n

end

end A315678.P3141292394974042427

namespace A315678

/-- `A005843(A008706(n))-A312163(n)` -/
def P3141292394974042427.Spec : Prop :=
  ∀ n, P3141292394974042427.a n = A315678 n

end A315678

/-! ## A315678.P5338069609508880398

`A065502(A008458(n))-A312163(n)`
-/

namespace A315678.P5338069609508880398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312163 n

end

end A315678.P5338069609508880398

namespace A315678

/-- `A065502(A008458(n))-A312163(n)` -/
def P5338069609508880398.Spec : Prop :=
  ∀ n, P5338069609508880398.a n = A315678 n

end A315678

/-! ## A315678.P6287735466360678240

`A004525(A315736(n)+A315667(n))`
-/

namespace A315678.P6287735466360678240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315736 n + A315667 n).toNat

end

end A315678.P6287735466360678240

namespace A315678

/-- `A004525(A315736(n)+A315667(n))` -/
def P6287735466360678240.Spec : Prop :=
  ∀ n, P6287735466360678240.a n = A315678 n

end A315678

/-! ## A315678.P6397874955158762594

`A233583(A017281(n))-A312163(n)`
-/

namespace A315678.P6397874955158762594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A312163 n

end

end A315678.P6397874955158762594

namespace A315678

/-- `A233583(A017281(n))-A312163(n)` -/
def P6397874955158762594.Spec : Prop :=
  ∀ n, P6397874955158762594.a n = A315678 n

end A315678

/-!
# A315679: Coordination sequence Gal.6.252.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315679, the canonical program `A315679.P7787860321428887982` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315679 has offset 0).

The definition of A315679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315679.P7787860321428887982

`abs(A008592(n)-A312162(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315679

/-- `abs(A008592(n)-A312162(n))` -/
def P7787860321428887982.Spec : Prop :=
  ∀ n, P7787860321428887982.a n = A315679 n

theorem P7787860321428887982.correct : P7787860321428887982.Spec := by
  intro n
  simp only [A315679]

end A315679

/-! ## A315679.P17675559777102827559

`A315445(n)+Δ[A011858(n)]`
-/

namespace A315679.P17675559777102827559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + (f1 (n + 1) - f1 n)

end

end A315679.P17675559777102827559

namespace A315679

/-- `A315445(n)+Δ[A011858(n)]` -/
def P17675559777102827559.Spec : Prop :=
  ∀ n, P17675559777102827559.a n = A315679 n

end A315679

/-! ## A315679.P3182747927308273811

`A315445(n)+A057354(n+1)`
-/

namespace A315679.P3182747927308273811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + A057354 (n + 1)

end

end A315679.P3182747927308273811

namespace A315679

/-- `A315445(n)+A057354(n+1)` -/
def P3182747927308273811.Spec : Prop :=
  ∀ n, P3182747927308273811.a n = A315679 n

end A315679

/-! ## A315679.P4757168993081138941

`A315445(n)+A134119(2*n)`
-/

namespace A315679.P4757168993081138941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + A134119 (2 * n)

end

end A315679.P4757168993081138941

namespace A315679

/-- `A315445(n)+A134119(2*n)` -/
def P4757168993081138941.Spec : Prop :=
  ∀ n, P4757168993081138941.a n = A315679 n

end A315679

/-! ## A315679.P17892395550317397229

`2*A008706(n)-A312162(n)`
-/

namespace A315679.P17892395550317397229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312162 n

end

end A315679.P17892395550317397229

namespace A315679

/-- `2*A008706(n)-A312162(n)` -/
def P17892395550317397229.Spec : Prop :=
  ∀ n, P17892395550317397229.a n = A315679 n

end A315679

/-! ## A315679.P12246646813420102497

`A008458(n)+A008574(n)-A312162(n)`
-/

namespace A315679.P12246646813420102497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312162 n)

end

end A315679.P12246646813420102497

namespace A315679

/-- `A008458(n)+A008574(n)-A312162(n)` -/
def P12246646813420102497.Spec : Prop :=
  ∀ n, P12246646813420102497.a n = A315679 n

end A315679

/-! ## A315679.P11787517695049344764

`A312162(n)+A005843(A008706(n)-A312162(n))`
-/

namespace A315679.P11787517695049344764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + A005843 (A008706 n - A312162 n).toNat

end

end A315679.P11787517695049344764

namespace A315679

/-- `A312162(n)+A005843(A008706(n)-A312162(n))` -/
def P11787517695049344764.Spec : Prop :=
  ∀ n, P11787517695049344764.a n = A315679 n

end A315679

/-! ## A315679.P10450007146864474599

`A330025(n)+A314111(n)`
-/

namespace A315679.P10450007146864474599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314111 n

end

end A315679.P10450007146864474599

namespace A315679

/-- `A330025(n)+A314111(n)` -/
def P10450007146864474599.Spec : Prop :=
  ∀ n, P10450007146864474599.a n = A315679 n

end A315679

/-! ## A315679.P8318358472935066220

`A310464(n)+2*A330025(n)`
-/

namespace A315679.P8318358472935066220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310464 n + 2 * A330025 n

end

end A315679.P8318358472935066220

namespace A315679

/-- `A310464(n)+2*A330025(n)` -/
def P8318358472935066220.Spec : Prop :=
  ∀ n, P8318358472935066220.a n = A315679 n

end A315679

/-! ## A315679.P15883326539634482428

`A313782(n)+A253262(n)`
-/

namespace A315679.P15883326539634482428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n + A253262 n

end

end A315679.P15883326539634482428

namespace A315679

/-- `A313782(n)+A253262(n)` -/
def P15883326539634482428.Spec : Prop :=
  ∀ n, P15883326539634482428.a n = A315679 n

end A315679

/-! ## A315679.P10398245983025785227

`A330025(n-A330025(n))+A315468(n)`
-/

namespace A315679.P10398245983025785227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315468 n

end

end A315679.P10398245983025785227

namespace A315679

/-- `A330025(n-A330025(n))+A315468(n)` -/
def P10398245983025785227.Spec : Prop :=
  ∀ n, P10398245983025785227.a n = A315679 n

end A315679

/-! ## A315679.P11779761849263937917

`A315481(n)-A014019(n+3)`
-/

namespace A315679.P11779761849263937917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315481 n - A014019 (n + 3)

end

end A315679.P11779761849263937917

namespace A315679

/-- `A315481(n)-A014019(n+3)` -/
def P11779761849263937917.Spec : Prop :=
  ∀ n, P11779761849263937917.a n = A315679 n

end A315679

/-! ## A315679.P17399159011736118997

`A005843(A008706(n))-A312162(n)`
-/

namespace A315679.P17399159011736118997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312162 n

end

end A315679.P17399159011736118997

namespace A315679

/-- `A005843(A008706(n))-A312162(n)` -/
def P17399159011736118997.Spec : Prop :=
  ∀ n, P17399159011736118997.a n = A315679 n

end A315679

/-! ## A315679.P1073496611834672809

`A315445(n)+A008676(A016777(2*n))`
-/

namespace A315679.P1073496611834672809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + A008676 (A016777 (2 * n)).toNat

end

end A315679.P1073496611834672809

namespace A315679

/-- `A315445(n)+A008676(A016777(2*n))` -/
def P1073496611834672809.Spec : Prop :=
  ∀ n, P1073496611834672809.a n = A315679 n

end A315679

/-!
# A315680: Coordination sequence Gal.5.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315680, the canonical program `A315680.P2686874256871590290` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315680 has offset 0).

The definition of A315680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315680.P14975791014934025252

`abs(A008592(n)-A312160(n))`
-/

namespace A315680.P14975791014934025252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312160 n|

end

end A315680.P14975791014934025252

namespace A315680

/-- `abs(A008592(n)-A312160(n))` -/
def P14975791014934025252.Spec : Prop :=
  ∀ n, P14975791014934025252.a n = A315680 n

end A315680

/-! ## A315680.P10490308517299566390

`2*A008706(n)-A312160(n)`
-/

namespace A315680.P10490308517299566390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312160 n

end

end A315680.P10490308517299566390

namespace A315680

/-- `2*A008706(n)-A312160(n)` -/
def P10490308517299566390.Spec : Prop :=
  ∀ n, P10490308517299566390.a n = A315680 n

end A315680

/-! ## A315680.P14123659063345442729

`(A315727(n)+A315646(n))/2`
-/

namespace A315680.P14123659063345442729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315727 n + A315646 n : ℚ) / 2

end

end A315680.P14123659063345442729

namespace A315680

/-- `(A315727(n)+A315646(n))/2` -/
def P14123659063345442729.Spec : Prop :=
  ∀ n, P14123659063345442729.a n = (A315680 n : ℚ)

end A315680

/-! ## A315680.P10130471713836702786

`A314088(n)+A004396(A004396(n))`
-/

namespace A315680.P10130471713836702786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314088 n + A004396 (A004396 n).toNat

end

end A315680.P10130471713836702786

namespace A315680

/-- `A314088(n)+A004396(A004396(n))` -/
def P10130471713836702786.Spec : Prop :=
  ∀ n, P10130471713836702786.a n = A315680 n

end A315680

/-! ## A315680.P2686874256871590290

`A315463(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315680

/-- `A315463(n)+A004396(n-A004396(n))` -/
def P2686874256871590290.Spec : Prop :=
  ∀ n, P2686874256871590290.a n = A315680 n

theorem P2686874256871590290.correct : P2686874256871590290.Spec := by
  intro n
  simp only [A315680]

end A315680

/-! ## A315680.P13923948675245183002

`A008458(n)+A008574(n)-A312160(n)`
-/

namespace A315680.P13923948675245183002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312160 n)

end

end A315680.P13923948675245183002

namespace A315680

/-- `A008458(n)+A008574(n)-A312160(n)` -/
def P13923948675245183002.Spec : Prop :=
  ∀ n, P13923948675245183002.a n = A315680 n

end A315680

/-! ## A315680.P17403754871931565770

`A314205(n)+A134667(A004396(n))`
-/

namespace A315680.P17403754871931565770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n + A134667 (A004396 n).toNat

end

end A315680.P17403754871931565770

namespace A315680

/-- `A314205(n)+A134667(A004396(n))` -/
def P17403754871931565770.Spec : Prop :=
  ∀ n, P17403754871931565770.a n = A315680 n

end A315680

/-! ## A315680.P3714696492354905866

`A315475(n)-A128834(A006369(2*n))`
-/

namespace A315680.P3714696492354905866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A128834 (A006369 (2 * n)).toNat

end

end A315680.P3714696492354905866

namespace A315680

/-- `A315475(n)-A128834(A006369(2*n))` -/
def P3714696492354905866.Spec : Prop :=
  ∀ n, P3714696492354905866.a n = A315680 n

end A315680

/-! ## A315680.P15526099538518555506

`A315475(n)-A102283(A004396(4*n))`
-/

namespace A315680.P15526099538518555506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A102283 (A004396 (4 * n)).toNat

end

end A315680.P15526099538518555506

namespace A315680

/-- `A315475(n)-A102283(A004396(4*n))` -/
def P15526099538518555506.Spec : Prop :=
  ∀ n, P15526099538518555506.a n = A315680 n

end A315680

/-! ## A315680.P15180485537071503715

`A315475(n)+A102283(n-A004396(n))`
-/

namespace A315680.P15180485537071503715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A102283 ((n : ℤ) - A004396 n).toNat

end

end A315680.P15180485537071503715

namespace A315680

/-- `A315475(n)+A102283(n-A004396(n))` -/
def P15180485537071503715.Spec : Prop :=
  ∀ n, P15180485537071503715.a n = A315680 n

end A315680

/-! ## A315680.P1385189676534552428

`A315475(n)-A102283(A004396(n)-A102283(n))`
-/

namespace A315680.P1385189676534552428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A102283 (A004396 n - A102283 n).toNat

end

end A315680.P1385189676534552428

namespace A315680

/-- `A315475(n)-A102283(A004396(n)-A102283(n))` -/
def P1385189676534552428.Spec : Prop :=
  ∀ n, P1385189676534552428.a n = A315680 n

end A315680

/-! ## A315680.P17188383206400352666

`A314141(n)+A128834(A004396(n))`
-/

namespace A315680.P17188383206400352666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A128834 (A004396 n).toNat

end

end A315680.P17188383206400352666

namespace A315680

/-- `A314141(n)+A128834(A004396(n))` -/
def P17188383206400352666.Spec : Prop :=
  ∀ n, P17188383206400352666.a n = A315680 n

end A315680

/-! ## A315680.P5339860353086606850

`A315739(n)-Δ[A011862(n)]`
-/

namespace A315680.P5339860353086606850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315739 n - (f1 (n + 1) - f1 n)

end

end A315680.P5339860353086606850

namespace A315680

/-- `A315739(n)-Δ[A011862(n)]` -/
def P5339860353086606850.Spec : Prop :=
  ∀ n, P5339860353086606850.a n = A315680 n

theorem P5339860353086606850.correct : P5339860353086606850.Spec := by
  intro n
  simp only [A315680, Nat.add_sub_cancel, A315680.P5339860353086606850.f1, A315680.P5339860353086606850.a, A315680.P2686874256871590290.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A315463, A315463.P16900864329988193490.a, A315739, A315739.P13129759353165828185.f1, A315739.P13129759353165828185.a, A315256, A315256.P12326446692328451720.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315680

/-! ## A315680.P16991267770765182837

`A004396(A004396(n))+A315739(n)-A004396(n)`
-/

namespace A315680.P16991267770765182837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315739 n - A004396 n)

end

end A315680.P16991267770765182837

namespace A315680

/-- `A004396(A004396(n))+A315739(n)-A004396(n)` -/
def P16991267770765182837.Spec : Prop :=
  ∀ n, P16991267770765182837.a n = A315680 n

end A315680

/-! ## A315680.P9179338955747568391

`A047263(A313477(n)+1)`
-/

namespace A315680.P9179338955747568391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A313477 n + 1).toNat

end

end A315680.P9179338955747568391

namespace A315680

/-- `A047263(A313477(n)+1)` -/
def P9179338955747568391.Spec : Prop :=
  ∀ n, P9179338955747568391.a n = A315680 n

end A315680

/-! ## A315680.P5192241999815437637

`A005843(A008706(n))-A312160(n)`
-/

namespace A315680.P5192241999815437637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312160 n

end

end A315680.P5192241999815437637

namespace A315680

/-- `A005843(A008706(n))-A312160(n)` -/
def P5192241999815437637.Spec : Prop :=
  ∀ n, P5192241999815437637.a n = A315680 n

end A315680

/-! ## A315680.P7926197489832172318

`A151988(2*A313477(n))/2`
-/

namespace A315680.P7926197489832172318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151988 (2 * A313477 n).toNat : ℚ) / 2

end

end A315680.P7926197489832172318

namespace A315680

/-- `A151988(2*A313477(n))/2` -/
def P7926197489832172318.Spec : Prop :=
  ∀ n, P7926197489832172318.a n = (A315680 n : ℚ)

end A315680

/-! ## A315680.P16903069845381395703

`A004526(A315727(n)+A315646(n))`
-/

namespace A315680.P16903069845381395703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315727 n + A315646 n).toNat

end

end A315680.P16903069845381395703

namespace A315680

/-- `A004526(A315727(n)+A315646(n))` -/
def P16903069845381395703.Spec : Prop :=
  ∀ n, P16903069845381395703.a n = A315680 n

end A315680

/-! ## A315680.P16961259312059678972

`A315446(n)+A033183(A004771(2*n))`
-/

namespace A315680.P16961259312059678972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315446 n + A033183 (A004771 (2 * n)).toNat

end

end A315680.P16961259312059678972

namespace A315680

/-- `A315446(n)+A033183(A004771(2*n))` -/
def P16961259312059678972.Spec : Prop :=
  ∀ n, P16961259312059678972.a n = A315680 n

end A315680

/-! ## A315680.P17029821441462017761

`A233583(A017281(n))-A312160(n)`
-/

namespace A315680.P17029821441462017761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A312160 n

end

end A315680.P17029821441462017761

namespace A315680

/-- `A233583(A017281(n))-A312160(n)` -/
def P17029821441462017761.Spec : Prop :=
  ∀ n, P17029821441462017761.a n = A315680 n

end A315680

/-!
# A315681: Coordination sequence Gal.6.159.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315681, the canonical program `A315681.P15551591667760656861` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315681 has offset 0).

The definition of A315681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315681.P18391861989405646988

`round(4*n/3)+A315459(n)-n`
-/

namespace A315681.P18391861989405646988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) + (A315459 n - (n : ℤ))

end

end A315681.P18391861989405646988

namespace A315681

/-- `round(4*n/3)+A315459(n)-n` -/
def P18391861989405646988.Spec : Prop :=
  ∀ n, P18391861989405646988.a n = A315681 n

end A315681

/-! ## A315681.P4092059666468828325

`A314085(n)+A004525(n)`
-/

namespace A315681.P4092059666468828325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314085 n + A004525 n

end

end A315681.P4092059666468828325

namespace A315681

/-- `A314085(n)+A004525(n)` -/
def P4092059666468828325.Spec : Prop :=
  ∀ n, P4092059666468828325.a n = A315681 n

theorem P4092059666468828325.correct : P4092059666468828325.Spec := by
  intro n
  simp only [A315681, Nat.add_sub_cancel, A315681.P4092059666468828325.a, A315681.P15551591667760656861.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314085, A314085.P6510588875040797776.a, A315670, A315670.P4155248808049658205.f1, A315670.P4155248808049658205.a, A021913, A021913.P3902253882929539198.a, A315395, A315395.P11298806320610192218.a, A046978, A046978.P71107966793699888.a, A313485, A313485.P7677676480922091384.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315681

/-! ## A315681.P11658065667554767192

`abs(A008592(n)-A312152(n))`
-/

namespace A315681.P11658065667554767192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312152 n|

end

end A315681.P11658065667554767192

namespace A315681

/-- `abs(A008592(n)-A312152(n))` -/
def P11658065667554767192.Spec : Prop :=
  ∀ n, P11658065667554767192.a n = A315681 n

end A315681

/-! ## A315681.P10656589569429467200

`A315459(n)+∑[A022003(n)]`
-/

namespace A315681.P10656589569429467200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315681.P10656589569429467200

namespace A315681

/-- `A315459(n)+∑[A022003(n)]` -/
def P10656589569429467200.Spec : Prop :=
  ∀ n, P10656589569429467200.a n = A315681 n

theorem P10656589569429467200.correct : P10656589569429467200.Spec := by
  intro n
  simp only [A315681, Nat.add_sub_cancel, A315681.P10656589569429467200.f1, A315681.P10656589569429467200.a, A315681.P15551591667760656861.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A022003, A022003.P8302093470414743033.a, A315459, A315459.P17608540704289415769.f1, A315459.P17608540704289415769.a, A315670, A315670.P4155248808049658205.f1, A315670.P4155248808049658205.a, A021913, A021913.P3902253882929539198.a, A315395, A315395.P11298806320610192218.a, A046978, A046978.P71107966793699888.a, A313485, A313485.P7677676480922091384.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315681

/-! ## A315681.P11678526035729331056

`A314085(n)+Δ[A054925(n)]`
-/

namespace A315681.P11678526035729331056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314085 n + (f1 (n + 1) - f1 n)

end

end A315681.P11678526035729331056

namespace A315681

/-- `A314085(n)+Δ[A054925(n)]` -/
def P11678526035729331056.Spec : Prop :=
  ∀ n, P11678526035729331056.a n = A315681 n

end A315681

/-! ## A315681.P10547269855184434827

`A315459(n)+A002264(n+1)`
-/

namespace A315681.P10547269855184434827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + A002264 (n + 1)

end

end A315681.P10547269855184434827

namespace A315681

/-- `A315459(n)+A002264(n+1)` -/
def P10547269855184434827.Spec : Prop :=
  ∀ n, P10547269855184434827.a n = A315681 n

end A315681

/-! ## A315681.P15013025214699615280

`2*A008706(n)-A312152(n)`
-/

namespace A315681.P15013025214699615280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312152 n

end

end A315681.P15013025214699615280

namespace A315681

/-- `2*A008706(n)-A312152(n)` -/
def P15013025214699615280.Spec : Prop :=
  ∀ n, P15013025214699615280.a n = A315681 n

end A315681

/-! ## A315681.P99187825508203963

`A315459(n)+n-A004396(n)`
-/

namespace A315681.P99187825508203963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + ((n : ℤ) - A004396 n)

end

end A315681.P99187825508203963

namespace A315681

/-- `A315459(n)+n-A004396(n)` -/
def P99187825508203963.Spec : Prop :=
  ∀ n, P99187825508203963.a n = A315681 n

end A315681

/-! ## A315681.P17122117578297437918

`A315459(n)+A008615(2*n+1)`
-/

namespace A315681.P17122117578297437918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315459 n + A008615 (2 * n + 1)

end

end A315681.P17122117578297437918

namespace A315681

/-- `A315459(n)+A008615(2*n+1)` -/
def P17122117578297437918.Spec : Prop :=
  ∀ n, P17122117578297437918.a n = A315681 n

end A315681

/-! ## A315681.P14872030484458388308

`A008458(n)+A008574(n)-A312152(n)`
-/

namespace A315681.P14872030484458388308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312152 n)

end

end A315681.P14872030484458388308

namespace A315681

/-- `A008458(n)+A008574(n)-A312152(n)` -/
def P14872030484458388308.Spec : Prop :=
  ∀ n, P14872030484458388308.a n = A315681 n

end A315681

/-! ## A315681.P17131461304992232638

`∑{d}[A008592(n)-A312152(n), A000010(#)]`
-/

namespace A315681.P17131461304992232638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315681.P17131461304992232638

namespace A315681

/-- `∑{d}[A008592(n)-A312152(n), A000010(#)]` -/
def P17131461304992232638.Spec : Prop :=
  ∀ n, P17131461304992232638.a n = A315681 n

end A315681

/-! ## A315681.P15551591667760656861

`A004525(n)+A315670(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315681

/-- `A004525(n)+A315670(n)-A004525(A004396(n))` -/
def P15551591667760656861.Spec : Prop :=
  ∀ n, P15551591667760656861.a n = A315681 n

theorem P15551591667760656861.correct : P15551591667760656861.Spec := by
  intro n
  simp only [A315681]

end A315681

/-! ## A315681.P9875156539061913537

`A312152(n)+A005843(A008706(n)-A312152(n))`
-/

namespace A315681.P9875156539061913537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + A005843 (A008706 n - A312152 n).toNat

end

end A315681.P9875156539061913537

namespace A315681

/-- `A312152(n)+A005843(A008706(n)-A312152(n))` -/
def P9875156539061913537.Spec : Prop :=
  ∀ n, P9875156539061913537.a n = A315681 n

end A315681

/-! ## A315681.P16114667004784317961

`A004525(n)+A315738(n)-A004396(n)`
-/

namespace A315681.P16114667004784317961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315738 n - A004396 n)

end

end A315681.P16114667004784317961

namespace A315681

/-- `A004525(n)+A315738(n)-A004396(n)` -/
def P16114667004784317961.Spec : Prop :=
  ∀ n, P16114667004784317961.a n = A315681 n

end A315681

/-! ## A315681.P5010503033668378742

`A005843(A008706(n))-A312152(n)`
-/

namespace A315681.P5010503033668378742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312152 n

end

end A315681.P5010503033668378742

namespace A315681

/-- `A005843(A008706(n))-A312152(n)` -/
def P5010503033668378742.Spec : Prop :=
  ∀ n, P5010503033668378742.a n = A315681 n

end A315681

/-!
# A315682: Coordination sequence Gal.6.253.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315682, the canonical program `A315682.P15234509743992815969` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315682 has offset 0).

The definition of A315682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315682.P3032809201398948198

`abs(A008592(n)-A312151(n))`
-/

namespace A315682.P3032809201398948198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312151 n|

end

end A315682.P3032809201398948198

namespace A315682

/-- `abs(A008592(n)-A312151(n))` -/
def P3032809201398948198.Spec : Prop :=
  ∀ n, P3032809201398948198.a n = A315682 n

end A315682

/-! ## A315682.P15234509743992815969

`A315643(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A315682

/-- `A315643(n)+Δ[A011864(n)]` -/
def P15234509743992815969.Spec : Prop :=
  ∀ n, P15234509743992815969.a n = A315682 n

theorem P15234509743992815969.correct : P15234509743992815969.Spec := by
  intro n
  simp only [A315682]

end A315682

/-! ## A315682.P5338596101858762312

`2*A008706(n)-A312151(n)`
-/

namespace A315682.P5338596101858762312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312151 n

end

end A315682.P5338596101858762312

namespace A315682

/-- `2*A008706(n)-A312151(n)` -/
def P5338596101858762312.Spec : Prop :=
  ∀ n, P5338596101858762312.a n = A315682 n

end A315682

/-! ## A315682.P11268830742144545291

`A008458(n)+A008574(n)-A312151(n)`
-/

namespace A315682.P11268830742144545291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312151 n)

end

end A315682.P11268830742144545291

namespace A315682

/-- `A008458(n)+A008574(n)-A312151(n)` -/
def P11268830742144545291.Spec : Prop :=
  ∀ n, P11268830742144545291.a n = A315682 n

end A315682

/-! ## A315682.P3920780553633567215

`A312151(n)+A005843(A008706(n)-A312151(n))`
-/

namespace A315682.P3920780553633567215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312151 n + A005843 (A008706 n - A312151 n).toNat

end

end A315682.P3920780553633567215

namespace A315682

/-- `A312151(n)+A005843(A008706(n)-A312151(n))` -/
def P3920780553633567215.Spec : Prop :=
  ∀ n, P3920780553633567215.a n = A315682 n

end A315682

/-! ## A315682.P7442795881211194046

`A315730(n)-Δ[A011864(n)]`
-/

namespace A315682.P7442795881211194046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 n - (f1 (n + 1) - f1 n)

end

end A315682.P7442795881211194046

namespace A315682

/-- `A315730(n)-Δ[A011864(n)]` -/
def P7442795881211194046.Spec : Prop :=
  ∀ n, P7442795881211194046.a n = A315682 n

theorem P7442795881211194046.correct : P7442795881211194046.Spec := by
  intro n
  simp only [A315682, Nat.add_sub_cancel, A315682.P7442795881211194046.f1, A315682.P7442795881211194046.a, A315682.P15234509743992815969.f1, A315682.P15234509743992815969.a, A011864, A011864.P3547417513882699266.a, A315643, A315643.P3183973614738207625.a, A315730, A315730.P12339410108613406190.f1, A315730.P12339410108613406190.a, A004278, A004278.P6535296897428680900.a, A017089, A017089.P13709942329986306669.a, A313899, A313899.P8562321666356515905.f1, A313899.P8562321666356515905.a, A313788, A313788.P6713366544553221303.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313738, A313738.P18419223100438122022.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315682

/-! ## A315682.P15862917981088362642

`2*n+A004396(A315667(n))`
-/

namespace A315682.P15862917981088362642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315667 n).toNat

end

end A315682.P15862917981088362642

namespace A315682

/-- `2*n+A004396(A315667(n))` -/
def P15862917981088362642.Spec : Prop :=
  ∀ n, P15862917981088362642.a n = A315682 n

end A315682

/-! ## A315682.P12211088069509057086

`A008585(n)-(n-A004396(A315667(n)))`
-/

namespace A315682.P12211088069509057086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315667 n).toNat)

end

end A315682.P12211088069509057086

namespace A315682

/-- `A008585(n)-(n-A004396(A315667(n)))` -/
def P12211088069509057086.Spec : Prop :=
  ∀ n, P12211088069509057086.a n = A315682 n

end A315682

/-! ## A315682.P8423210356465128295

`A005843(A008706(n))-A312151(n)`
-/

namespace A315682.P8423210356465128295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312151 n

end

end A315682.P8423210356465128295

namespace A315682

/-- `A005843(A008706(n))-A312151(n)` -/
def P8423210356465128295.Spec : Prop :=
  ∀ n, P8423210356465128295.a n = A315682 n

end A315682

/-! ## A315682.P1841585082201634402

`A004396(A315667(n)+A008486(n))`
-/

namespace A315682.P1841585082201634402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315667 n + A008486 n).toNat

end

end A315682.P1841585082201634402

namespace A315682

/-- `A004396(A315667(n)+A008486(n))` -/
def P1841585082201634402.Spec : Prop :=
  ∀ n, P1841585082201634402.a n = A315682 n

end A315682

/-! ## A315682.P1392797272537890931

`A004396(A315667(n)+A008585(n))`
-/

namespace A315682.P1392797272537890931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315667 n + A008585 n).toNat

end

end A315682.P1392797272537890931

namespace A315682

/-- `A004396(A315667(n)+A008585(n))` -/
def P1392797272537890931.Spec : Prop :=
  ∀ n, P1392797272537890931.a n = A315682 n

end A315682

/-! ## A315682.P10168988451994168713

`A310423(A008574(n))/2-A310423(n)`
-/

namespace A315682.P10168988451994168713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (A008574 n).toNat : ℚ) / 2 - (A310423 n : ℚ)

end

end A315682.P10168988451994168713

namespace A315682

/-- `A310423(A008574(n))/2-A310423(n)` -/
def P10168988451994168713.Spec : Prop :=
  ∀ n, P10168988451994168713.a n = (A315682 n : ℚ)

end A315682

/-!
# A315683: Coordination sequence Gal.6.634.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315683, the canonical program `A315683.P6946226476358261575` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315683 has offset 0).

The definition of A315683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315683.P6946226476358261575

`A313474(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315683

/-- `A313474(n)+n` -/
def P6946226476358261575.Spec : Prop :=
  ∀ n, P6946226476358261575.a n = A315683 n

theorem P6946226476358261575.correct : P6946226476358261575.Spec := by
  intro n
  simp only [A315683]

end A315683

/-! ## A315683.P8036710757376725590

`A314089(n)+A004525(n)`
-/

namespace A315683.P8036710757376725590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A004525 n

end

end A315683.P8036710757376725590

namespace A315683

/-- `A314089(n)+A004525(n)` -/
def P8036710757376725590.Spec : Prop :=
  ∀ n, P8036710757376725590.a n = A315683 n

end A315683

/-! ## A315683.P2461640129887439920

`A315462(n)+A002264(n+1)`
-/

namespace A315683.P2461640129887439920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n + A002264 (n + 1)

end

end A315683.P2461640129887439920

namespace A315683

/-- `A315462(n)+A002264(n+1)` -/
def P2461640129887439920.Spec : Prop :=
  ∀ n, P2461640129887439920.a n = A315683 n

end A315683

/-! ## A315683.P16950398292844200619

`A315462(n)+n-A004396(n)`
-/

namespace A315683.P16950398292844200619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n + ((n : ℤ) - A004396 n)

end

end A315683.P16950398292844200619

namespace A315683

/-- `A315462(n)+n-A004396(n)` -/
def P16950398292844200619.Spec : Prop :=
  ∀ n, P16950398292844200619.a n = A315683 n

end A315683

/-! ## A315683.P10184784003172875635

`A008486(n)+A315462(n)-A008576(n)`
-/

namespace A315683.P10184784003172875635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315462 n - A008576 n)

end

end A315683.P10184784003172875635

namespace A315683

/-- `A008486(n)+A315462(n)-A008576(n)` -/
def P10184784003172875635.Spec : Prop :=
  ∀ n, P10184784003172875635.a n = A315683 n

end A315683

/-! ## A315683.P12035632037411823028

`A314108(n)+A004525(A004396(n))`
-/

namespace A315683.P12035632037411823028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n + A004525 (A004396 n).toNat

end

end A315683.P12035632037411823028

namespace A315683

/-- `A314108(n)+A004525(A004396(n))` -/
def P12035632037411823028.Spec : Prop :=
  ∀ n, P12035632037411823028.a n = A315683 n

end A315683

/-! ## A315683.P3642980314894730930

`A004525(n)+A315673(n)-A004396(A004525(n))`
-/

namespace A315683.P3642980314894730930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315673 n - A004396 (A004525 n).toNat)

end

end A315683.P3642980314894730930

namespace A315683

/-- `A004525(n)+A315673(n)-A004396(A004525(n))` -/
def P3642980314894730930.Spec : Prop :=
  ∀ n, P3642980314894730930.a n = A315683 n

end A315683

/-! ## A315683.P9302158239454119206

`abs(A008592(n)-A312144(n))`
-/

namespace A315683.P9302158239454119206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312144 n|

end

end A315683.P9302158239454119206

namespace A315683

/-- `abs(A008592(n)-A312144(n))` -/
def P9302158239454119206.Spec : Prop :=
  ∀ n, P9302158239454119206.a n = A315683 n

end A315683

/-! ## A315683.P5750166500503103178

`A008458(n)+A008574(n)-A312144(n)`
-/

namespace A315683.P5750166500503103178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312144 n)

end

end A315683.P5750166500503103178

namespace A315683

/-- `A008458(n)+A008574(n)-A312144(n)` -/
def P5750166500503103178.Spec : Prop :=
  ∀ n, P5750166500503103178.a n = A315683 n

end A315683

/-! ## A315683.P4628921624101696585

`A314233(n)+A128834(n)`
-/

namespace A315683.P4628921624101696585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314233 n + A128834 n

end

end A315683.P4628921624101696585

namespace A315683

/-- `A314233(n)+A128834(n)` -/
def P4628921624101696585.Spec : Prop :=
  ∀ n, P4628921624101696585.a n = A315683 n

end A315683

/-! ## A315683.P14393139367135973051

`A314233(n)-A010892(n+2)`
-/

namespace A315683.P14393139367135973051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314233 n - A010892 (n + 2)

end

end A315683.P14393139367135973051

namespace A315683

/-- `A314233(n)-A010892(n+2)` -/
def P14393139367135973051.Spec : Prop :=
  ∀ n, P14393139367135973051.a n = A315683 n

end A315683

/-! ## A315683.P4638057713108543968

`A315760(n)-A047513(n+1)+n`
-/

namespace A315683.P4638057713108543968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A047513 (n + 1) + (n : ℤ)

end

end A315683.P4638057713108543968

namespace A315683

/-- `A315760(n)-A047513(n+1)+n` -/
def P4638057713108543968.Spec : Prop :=
  ∀ n, P4638057713108543968.a n = A315683 n

end A315683

/-! ## A315683.P6205503814510553665

`A004525(A004396(n))+A315760(n)-A004396(n)`
-/

namespace A315683.P6205503814510553665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315760 n - A004396 n)

end

end A315683.P6205503814510553665

namespace A315683

/-- `A004525(A004396(n))+A315760(n)-A004396(n)` -/
def P6205503814510553665.Spec : Prop :=
  ∀ n, P6205503814510553665.a n = A315683 n

end A315683

/-! ## A315683.P5968329570817624816

`A004396(A315670(n))+2*n`
-/

namespace A315683.P5968329570817624816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315670 n).toNat + (2 * n : ℤ)

end

end A315683.P5968329570817624816

namespace A315683

/-- `A004396(A315670(n))+2*n` -/
def P5968329570817624816.Spec : Prop :=
  ∀ n, P5968329570817624816.a n = A315683 n

end A315683

/-! ## A315683.P414403270773829008

`A315409(n)+n-A004525(n)`
-/

namespace A315683.P414403270773829008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315409 n + ((n : ℤ) - A004525 n)

end

end A315683.P414403270773829008

namespace A315683

/-- `A315409(n)+n-A004525(n)` -/
def P414403270773829008.Spec : Prop :=
  ∀ n, P414403270773829008.a n = A315683 n

theorem P414403270773829008.correct : P414403270773829008.Spec := by
  intro n
  simp only [A315683, Nat.add_sub_cancel, A315683.P414403270773829008.a, A315683.P6946226476358261575.a, A004525, A004525.P4158271949796742323.a, A313474, A313474.P13131872544688635231.a, A315409, A315409.P16904544439805105745.a, A004396, A004396.P17032557045289780609.a, A313533, A313533.P10490888896929360716.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315683

/-!
# A315684: Coordination sequence Gal.5.291.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315684, the canonical program `A315684.P8057506164725959055` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315684 has offset 0).

The definition of A315684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315684.P8057506164725959055

`A313476(n)+n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315684

/-- `A313476(n)+n` -/
def P8057506164725959055.Spec : Prop :=
  ∀ n, P8057506164725959055.a n = A315684 n

theorem P8057506164725959055.correct : P8057506164725959055.Spec := by
  intro n
  simp only [A315684]

end A315684

/-! ## A315684.P18203699664118744705

`A330025(n)+A301726(n)`
-/

namespace A315684.P18203699664118744705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A301726 n

end

end A315684.P18203699664118744705

namespace A315684

/-- `A330025(n)+A301726(n)` -/
def P18203699664118744705.Spec : Prop :=
  ∀ n, P18203699664118744705.a n = A315684 n

end A315684

/-! ## A315684.P14324800982146692583

`abs(A008592(n)-A312143(n))`
-/

namespace A315684.P14324800982146692583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312143 n|

end

end A315684.P14324800982146692583

namespace A315684

/-- `abs(A008592(n)-A312143(n))` -/
def P14324800982146692583.Spec : Prop :=
  ∀ n, P14324800982146692583.a n = A315684 n

end A315684

/-! ## A315684.P2992286886200954753

`2*A008706(n)-A312143(n)`
-/

namespace A315684.P2992286886200954753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312143 n

end

end A315684.P2992286886200954753

namespace A315684

/-- `2*A008706(n)-A312143(n)` -/
def P2992286886200954753.Spec : Prop :=
  ∀ n, P2992286886200954753.a n = A315684 n

end A315684

/-! ## A315684.P7711706224353768853

`(A315630(n)+A008458(n))/2`
-/

namespace A315684.P7711706224353768853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315630 n + A008458 n : ℚ) / 2

end

end A315684.P7711706224353768853

namespace A315684

/-- `(A315630(n)+A008458(n))/2` -/
def P7711706224353768853.Spec : Prop :=
  ∀ n, P7711706224353768853.a n = (A315684 n : ℚ)

end A315684

/-! ## A315684.P9477019631532011118

`A253262(n)+A311535(n)+n`
-/

namespace A315684.P9477019631532011118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A311535 n + (n : ℤ))

end

end A315684.P9477019631532011118

namespace A315684

/-- `A253262(n)+A311535(n)+n` -/
def P9477019631532011118.Spec : Prop :=
  ∀ n, P9477019631532011118.a n = A315684 n

end A315684

/-! ## A315684.P10093413896407516480

`A312903(n)+A330025(n)+n`
-/

namespace A315684.P10093413896407516480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + (A330025 n + (n : ℤ))

end

end A315684.P10093413896407516480

namespace A315684

/-- `A312903(n)+A330025(n)+n` -/
def P10093413896407516480.Spec : Prop :=
  ∀ n, P10093413896407516480.a n = A315684 n

theorem P10093413896407516480.correct : P10093413896407516480.Spec := by
  intro n
  simp only [A315684, Nat.add_sub_cancel, A315684.P10093413896407516480.a, A315684.P8057506164725959055.a, A312903, A312903.P5186887365123370171.a, A313476, A313476.P1237108097731061015.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315684

/-! ## A315684.P17772001581970329140

`A315691(n)+n-A151988(n)`
-/

namespace A315684.P17772001581970329140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315691 n + ((n : ℤ) - A151988 n)

end

end A315684.P17772001581970329140

namespace A315684

/-- `A315691(n)+n-A151988(n)` -/
def P17772001581970329140.Spec : Prop :=
  ∀ n, P17772001581970329140.a n = A315684 n

end A315684

/-! ## A315684.P8978739366118776150

`A005843(n)-(n-A313476(n))`
-/

namespace A315684.P8978739366118776150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313476 n)

end

end A315684.P8978739366118776150

namespace A315684

/-- `A005843(n)-(n-A313476(n))` -/
def P8978739366118776150.Spec : Prop :=
  ∀ n, P8978739366118776150.a n = A315684 n

theorem P8978739366118776150.correct : P8978739366118776150.Spec := by
  intro n
  simp only [A315684, Nat.add_sub_cancel, A315684.P8978739366118776150.a, A315684.P8057506164725959055.a, A005843, A005843.P3167286115683555970.a, A313476, A313476.P1237108097731061015.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315684

/-! ## A315684.P14238717492146431345

`abs(A008591(n)+n-A312143(n))`
-/

namespace A315684.P14238717492146431345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A312143 n)|

end

end A315684.P14238717492146431345

namespace A315684

/-- `abs(A008591(n)+n-A312143(n))` -/
def P14238717492146431345.Spec : Prop :=
  ∀ n, P14238717492146431345.a n = A315684 n

end A315684

/-! ## A315684.P15733809849935648954

`A314020(n)+n-Δ[A011858(n)]`
-/

namespace A315684.P15733809849935648954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314020 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315684.P15733809849935648954

namespace A315684

/-- `A314020(n)+n-Δ[A011858(n)]` -/
def P15733809849935648954.Spec : Prop :=
  ∀ n, P15733809849935648954.a n = A315684 n

theorem P15733809849935648954.correct : P15733809849935648954.Spec := by
  intro n
  simp only [A315684, Nat.add_sub_cancel, A315684.P15733809849935648954.f1, A315684.P15733809849935648954.a, A315684.P8057506164725959055.a, A011858, A011858.P16234308487928340219.a, A313476, A313476.P1237108097731061015.a, A314020, A314020.P15849566854326766126.f1, A314020.P15849566854326766126.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315684

/-! ## A315684.P547482661695878542

`A008458(n)+A008574(n)-A312143(n)`
-/

namespace A315684.P547482661695878542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312143 n)

end

end A315684.P547482661695878542

namespace A315684

/-- `A008458(n)+A008574(n)-A312143(n)` -/
def P547482661695878542.Spec : Prop :=
  ∀ n, P547482661695878542.a n = A315684 n

end A315684

/-! ## A315684.P9109024487863495533

`A005843(n)+A005843(A008574(n))-A312143(n)`
-/

namespace A315684.P9109024487863495533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312143 n)

end

end A315684.P9109024487863495533

namespace A315684

/-- `A005843(n)+A005843(A008574(n))-A312143(n)` -/
def P9109024487863495533.Spec : Prop :=
  ∀ n, P9109024487863495533.a n = A315684 n

end A315684

/-! ## A315684.P9019457319339194318

`A313801(n)+A253262(n)`
-/

namespace A315684.P9019457319339194318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n + A253262 n

end

end A315684.P9019457319339194318

namespace A315684

/-- `A313801(n)+A253262(n)` -/
def P9019457319339194318.Spec : Prop :=
  ∀ n, P9019457319339194318.a n = A315684 n

end A315684

/-! ## A315684.P15750390175305850263

`A315742(n)-A047263(n+1)+n`
-/

namespace A315684.P15750390175305850263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A047263 (n + 1) + (n : ℤ)

end

end A315684.P15750390175305850263

namespace A315684

/-- `A315742(n)-A047263(n+1)+n` -/
def P15750390175305850263.Spec : Prop :=
  ∀ n, P15750390175305850263.a n = A315684 n

theorem P15750390175305850263.correct : P15750390175305850263.Spec := by
  intro n
  simp only [A315684, Nat.add_sub_cancel, A315684.P15750390175305850263.a, A315684.P8057506164725959055.a, A047263, A047263.P10177617567604490545.a, A313476, A313476.P1237108097731061015.a, A315742, A315742.P4234331020117959484.a, A312903, A312903.P5186887365123370171.a, A313682, A313682.P7898542429883627702.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A315684

/-! ## A315684.P6910120086888950297

`abs(A008593(n)-A313928(n))`
-/

namespace A315684.P6910120086888950297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313928 n|

end

end A315684.P6910120086888950297

namespace A315684

/-- `abs(A008593(n)-A313928(n))` -/
def P6910120086888950297.Spec : Prop :=
  ∀ n, P6910120086888950297.a n = A315684 n

end A315684

/-! ## A315684.P7865749395276813776

`A005843(A008574(n)+n)-A312143(n)`
-/

namespace A315684.P7865749395276813776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312143 n

end

end A315684.P7865749395276813776

namespace A315684

/-- `A005843(A008574(n)+n)-A312143(n)` -/
def P7865749395276813776.Spec : Prop :=
  ∀ n, P7865749395276813776.a n = A315684 n

end A315684

/-! ## A315684.P9165166266954045700

`A005843(A008458(n))-(A313928(n)+n)`
-/

namespace A315684.P9165166266954045700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n).toNat - (A313928 n + (n : ℤ))

end

end A315684.P9165166266954045700

namespace A315684

/-- `A005843(A008458(n))-(A313928(n)+n)` -/
def P9165166266954045700.Spec : Prop :=
  ∀ n, P9165166266954045700.a n = A315684 n

end A315684

/-! ## A315684.P4174347782623332947

`n-A001057(2*A313476(n))`
-/

namespace A315684.P4174347782623332947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A313476 n).toNat

end

end A315684.P4174347782623332947

namespace A315684

/-- `n-A001057(2*A313476(n))` -/
def P4174347782623332947.Spec : Prop :=
  ∀ n, P4174347782623332947.a n = A315684 n

end A315684

/-!
# A315685: Coordination sequence Gal.4.140.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315685, the canonical program `A315685.P11286154691469663950` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315685 has offset 0).

The definition of A315685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315685.P11286154691469663950

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=17, a(4)=22, a(5)=27, a(6)=32`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315685

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P11286154691469663950.Spec : Prop :=
  ∀ n, P11286154691469663950.a n = A315685 n

theorem P11286154691469663950.correct : P11286154691469663950.Spec := by
  intro n
  simp only [A315685]

end A315685

/-! ## A315685.P3832096291496326714

`A046978(n)+A312943(n)+n`
-/

namespace A315685.P3832096291496326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A312943 n + (n : ℤ))

end

end A315685.P3832096291496326714

namespace A315685

/-- `A046978(n)+A312943(n)+n` -/
def P3832096291496326714.Spec : Prop :=
  ∀ n, P3832096291496326714.a n = A315685 n

end A315685

/-! ## A315685.P11370578687912944073

`A008458(n)-∑[A131078(n+6)]`
-/

namespace A315685.P11370578687912944073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315685.P11370578687912944073

namespace A315685

/-- `A008458(n)-∑[A131078(n+6)]` -/
def P11370578687912944073.Spec : Prop :=
  ∀ n, P11370578687912944073.a n = A315685 n

end A315685

/-! ## A315685.P17344748354580296508

`A004525(A004525(n))+A312894(n)+n`
-/

namespace A315685.P17344748354580296508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A312894 n + (n : ℤ))

end

end A315685.P17344748354580296508

namespace A315685

/-- `A004525(A004525(n))+A312894(n)+n` -/
def P17344748354580296508.Spec : Prop :=
  ∀ n, P17344748354580296508.a n = A315685 n

end A315685

/-! ## A315685.P4676395413487966835

`abs(A008592(n)-A312140(n))`
-/

namespace A315685.P4676395413487966835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312140 n|

end

end A315685.P4676395413487966835

namespace A315685

/-- `abs(A008592(n)-A312140(n))` -/
def P4676395413487966835.Spec : Prop :=
  ∀ n, P4676395413487966835.a n = A315685 n

end A315685

/-! ## A315685.P2487595913555287053

`A008458(n)+A008574(n)-A312140(n)`
-/

namespace A315685.P2487595913555287053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312140 n)

end

end A315685.P2487595913555287053

namespace A315685

/-- `A008458(n)+A008574(n)-A312140(n)` -/
def P2487595913555287053.Spec : Prop :=
  ∀ n, P2487595913555287053.a n = A315685 n

end A315685

/-! ## A315685.P832993690577879499

`A313480(n)+n`
-/

namespace A315685.P832993690577879499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + (n : ℤ)

end

end A315685.P832993690577879499

namespace A315685

/-- `A313480(n)+n` -/
def P832993690577879499.Spec : Prop :=
  ∀ n, P832993690577879499.a n = A315685 n

theorem P832993690577879499.correct : P832993690577879499.Spec := by
  intro n
  simp only [A315685, Nat.add_sub_cancel, A315685.P832993690577879499.a, A315685.P11286154691469663950.a, A313480, A313480.P5748992067713966907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315685

/-! ## A315685.P12000493973054615828

`A005843(n)-(n-A313480(n))`
-/

namespace A315685.P12000493973054615828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313480 n)

end

end A315685.P12000493973054615828

namespace A315685

/-- `A005843(n)-(n-A313480(n))` -/
def P12000493973054615828.Spec : Prop :=
  ∀ n, P12000493973054615828.a n = A315685 n

theorem P12000493973054615828.correct : P12000493973054615828.Spec := by
  intro n
  simp only [A315685, Nat.add_sub_cancel, A315685.P12000493973054615828.a, A315685.P11286154691469663950.a, A005843, A005843.P3167286115683555970.a, A313480, A313480.P5748992067713966907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315685

/-! ## A315685.P367489380535197204

`Δ[A002061(n)]-(n-A313480(n))`
-/

namespace A315685.P367489380535197204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - A313480 n)

end

end A315685.P367489380535197204

namespace A315685

/-- `Δ[A002061(n)]-(n-A313480(n))` -/
def P367489380535197204.Spec : Prop :=
  ∀ n, P367489380535197204.a n = A315685 n

theorem P367489380535197204.correct : P367489380535197204.Spec := by
  intro n
  simp only [A315685, Nat.add_sub_cancel, A315685.P367489380535197204.f1, A315685.P367489380535197204.a, A315685.P11286154691469663950.a, A002061, A002061.P13016590216674735232.a, A313480, A313480.P5748992067713966907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315685

/-! ## A315685.P12021640816722312695

`A313685(n)+n-Δ[A011861(n)]`
-/

namespace A315685.P12021640816722312695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315685.P12021640816722312695

namespace A315685

/-- `A313685(n)+n-Δ[A011861(n)]` -/
def P12021640816722312695.Spec : Prop :=
  ∀ n, P12021640816722312695.a n = A315685 n

end A315685

/-! ## A315685.P8917800014433571560

`A315411(n)+Δ[A011848(n)]`
-/

namespace A315685.P8917800014433571560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + (f1 (n + 1) - f1 n)

end

end A315685.P8917800014433571560

namespace A315685

/-- `A315411(n)+Δ[A011848(n)]` -/
def P8917800014433571560.Spec : Prop :=
  ∀ n, P8917800014433571560.a n = A315685 n

end A315685

/-! ## A315685.P329838159956186326

`A315411(n)+n-A004525(n)`
-/

namespace A315685.P329838159956186326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n + ((n : ℤ) - A004525 n)

end

end A315685.P329838159956186326

namespace A315685

/-- `A315411(n)+n-A004525(n)` -/
def P329838159956186326.Spec : Prop :=
  ∀ n, P329838159956186326.a n = A315685 n

theorem P329838159956186326.correct : P329838159956186326.Spec := by
  intro n
  simp only [A315685, Nat.add_sub_cancel, A315685.P329838159956186326.a, A315685.P11286154691469663950.a, A004525, A004525.P4158271949796742323.a, A315411, A315411.P3780549554269215954.a, A313480, A313480.P5748992067713966907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315685

/-! ## A315685.P8226723578889869951

`A314090(n)+A004525(n)`
-/

namespace A315685.P8226723578889869951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A004525 n

end

end A315685.P8226723578889869951

namespace A315685

/-- `A314090(n)+A004525(n)` -/
def P8226723578889869951.Spec : Prop :=
  ∀ n, P8226723578889869951.a n = A315685 n

theorem P8226723578889869951.correct : P8226723578889869951.Spec := by
  intro n
  simp only [A315685, Nat.add_sub_cancel, A315685.P8226723578889869951.a, A315685.P11286154691469663950.a, A004525, A004525.P4158271949796742323.a, A314090, A314090.P9494810813166851977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315685

/-! ## A315685.P6259082816289653080

`(A315632(n)+A008458(n))/2`
-/

namespace A315685.P6259082816289653080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315632 n + A008458 n : ℚ) / 2

end

end A315685.P6259082816289653080

namespace A315685

/-- `(A315632(n)+A008458(n))/2` -/
def P6259082816289653080.Spec : Prop :=
  ∀ n, P6259082816289653080.a n = (A315685 n : ℚ)

end A315685

/-! ## A315685.P6006365514224754793

`A310458(n)+2*A004525(A004525(n))`
-/

namespace A315685.P6006365514224754793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + 2 * A004525 (A004525 n).toNat

end

end A315685.P6006365514224754793

namespace A315685

/-- `A310458(n)+2*A004525(A004525(n))` -/
def P6006365514224754793.Spec : Prop :=
  ∀ n, P6006365514224754793.a n = A315685 n

end A315685

/-! ## A315685.P15457461194063974930

`A315399(n)+n-A004525(A004525(n))`
-/

namespace A315685.P15457461194063974930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315399 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A315685.P15457461194063974930

namespace A315685

/-- `A315399(n)+n-A004525(A004525(n))` -/
def P15457461194063974930.Spec : Prop :=
  ∀ n, P15457461194063974930.a n = A315685 n

end A315685

/-! ## A315685.P10074221601366850424

`A004525(n)+A315671(n)-A004525(A004525(n))`
-/

namespace A315685.P10074221601366850424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315671 n - A004525 (A004525 n).toNat)

end

end A315685.P10074221601366850424

namespace A315685

/-- `A004525(n)+A315671(n)-A004525(A004525(n))` -/
def P10074221601366850424.Spec : Prop :=
  ∀ n, P10074221601366850424.a n = A315685 n

end A315685

/-! ## A315685.P8831562527898518373

`A315469(n)+A004525(n-A004525(n))`
-/

namespace A315685.P8831562527898518373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A315685.P8831562527898518373

namespace A315685

/-- `A315469(n)+A004525(n-A004525(n))` -/
def P8831562527898518373.Spec : Prop :=
  ∀ n, P8831562527898518373.a n = A315685 n

end A315685

/-! ## A315685.P15890772103807363450

`A314161(n)+A046978(n)`
-/

namespace A315685.P15890772103807363450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n + A046978 n

end

end A315685.P15890772103807363450

namespace A315685

/-- `A314161(n)+A046978(n)` -/
def P15890772103807363450.Spec : Prop :=
  ∀ n, P15890772103807363450.a n = A315685 n

end A315685

/-! ## A315685.P12649906808403027638

`A315520(n)-A014017(n+2)`
-/

namespace A315685.P12649906808403027638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A014017 (n + 2)

end

end A315685.P12649906808403027638

namespace A315685

/-- `A315520(n)-A014017(n+2)` -/
def P12649906808403027638.Spec : Prop :=
  ∀ n, P12649906808403027638.a n = A315685 n

end A315685

/-!
# A315686: Coordination sequence Gal.6.209.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315686, the canonical program `A315686.P16259785268350877649` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315686 has offset 0).

The definition of A315686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315686.P16259785268350877649

`abs(10*n-A312125(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315686

/-- `abs(10*n-A312125(n))` -/
def P16259785268350877649.Spec : Prop :=
  ∀ n, P16259785268350877649.a n = A315686 n

theorem P16259785268350877649.correct : P16259785268350877649.Spec := by
  intro n
  simp only [A315686]

end A315686

/-! ## A315686.P14213017975994459073

`A315645(n)+Δ[A011864(n)]`
-/

namespace A315686.P14213017975994459073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315645 n + (f1 (n + 1) - f1 n)

end

end A315686.P14213017975994459073

namespace A315686

/-- `A315645(n)+Δ[A011864(n)]` -/
def P14213017975994459073.Spec : Prop :=
  ∀ n, P14213017975994459073.a n = A315686 n

end A315686

/-! ## A315686.P1513508727975478443

`A315733(n)-Δ[A011864(n)]`
-/

namespace A315686.P1513508727975478443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315733 n - (f1 (n + 1) - f1 n)

end

end A315686.P1513508727975478443

namespace A315686

/-- `A315733(n)-Δ[A011864(n)]` -/
def P1513508727975478443.Spec : Prop :=
  ∀ n, P1513508727975478443.a n = A315686 n

end A315686

/-! ## A315686.P6320063932099666594

`2*A008706(n)-A312125(n)`
-/

namespace A315686.P6320063932099666594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312125 n

end

end A315686.P6320063932099666594

namespace A315686

/-- `2*A008706(n)-A312125(n)` -/
def P6320063932099666594.Spec : Prop :=
  ∀ n, P6320063932099666594.a n = A315686 n

end A315686

/-! ## A315686.P16926978574005092291

`(A315633(n)+A008458(n))/2`
-/

namespace A315686.P16926978574005092291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315633 n + A008458 n : ℚ) / 2

end

end A315686.P16926978574005092291

namespace A315686

/-- `(A315633(n)+A008458(n))/2` -/
def P16926978574005092291.Spec : Prop :=
  ∀ n, P16926978574005092291.a n = (A315686 n : ℚ)

end A315686

/-! ## A315686.P12838901462258501860

`A008486(n)+A004526(A315633(n))`
-/

namespace A315686.P12838901462258501860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315633 n).toNat

end

end A315686.P12838901462258501860

namespace A315686

/-- `A008486(n)+A004526(A315633(n))` -/
def P12838901462258501860.Spec : Prop :=
  ∀ n, P12838901462258501860.a n = A315686 n

end A315686

/-! ## A315686.P8349414043514598374

`A008458(n)+A008574(n)-A312125(n)`
-/

namespace A315686.P8349414043514598374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312125 n)

end

end A315686.P8349414043514598374

namespace A315686

/-- `A008458(n)+A008574(n)-A312125(n)` -/
def P8349414043514598374.Spec : Prop :=
  ∀ n, P8349414043514598374.a n = A315686 n

end A315686

/-! ## A315686.P17752750391214447643

`∑{d}[A008592(n)-A312125(n), A000010(#)]`
-/

namespace A315686.P17752750391214447643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315686.P17752750391214447643

namespace A315686

/-- `∑{d}[A008592(n)-A312125(n), A000010(#)]` -/
def P17752750391214447643.Spec : Prop :=
  ∀ n, P17752750391214447643.a n = A315686 n

end A315686

/-! ## A315686.P7469228528961242043

`A005843(n)+A005843(A008574(n))-A312125(n)`
-/

namespace A315686.P7469228528961242043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312125 n)

end

end A315686.P7469228528961242043

namespace A315686

/-- `A005843(n)+A005843(A008574(n))-A312125(n)` -/
def P7469228528961242043.Spec : Prop :=
  ∀ n, P7469228528961242043.a n = A315686 n

end A315686

/-! ## A315686.P3559676754341201361

`A315633(n)+A001281(A008458(n)-A315633(n))`
-/

namespace A315686.P3559676754341201361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315633 n + A001281 (A008458 n - A315633 n).toNat

end

end A315686.P3559676754341201361

namespace A315686

/-- `A315633(n)+A001281(A008458(n)-A315633(n))` -/
def P3559676754341201361.Spec : Prop :=
  ∀ n, P3559676754341201361.a n = A315686 n

end A315686

/-! ## A315686.P14817512339448365110

`A315633(n)+A004525(A008458(n)-A315633(n))`
-/

namespace A315686.P14817512339448365110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315633 n + A004525 (A008458 n - A315633 n).toNat

end

end A315686.P14817512339448365110

namespace A315686

/-- `A315633(n)+A004525(A008458(n)-A315633(n))` -/
def P14817512339448365110.Spec : Prop :=
  ∀ n, P14817512339448365110.a n = A315686 n

end A315686

/-! ## A315686.P1269145287067221654

`A315470(n)+A004525(A315470(n)-A315245(n))`
-/

namespace A315686.P1269145287067221654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315470 n + A004525 (A315470 n - A315245 n).toNat

end

end A315686.P1269145287067221654

namespace A315686

/-- `A315470(n)+A004525(A315470(n)-A315245(n))` -/
def P1269145287067221654.Spec : Prop :=
  ∀ n, P1269145287067221654.a n = A315686 n

end A315686

/-! ## A315686.P4505419140572311749

`A008458(n)-A004526(A008458(n)-A315633(n))`
-/

namespace A315686.P4505419140572311749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315633 n).toNat

end

end A315686.P4505419140572311749

namespace A315686

/-- `A008458(n)-A004526(A008458(n)-A315633(n))` -/
def P4505419140572311749.Spec : Prop :=
  ∀ n, P4505419140572311749.a n = A315686 n

end A315686

/-! ## A315686.P5196600223686369535

`A005843(A008706(n))-A312125(n)`
-/

namespace A315686.P5196600223686369535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312125 n

end

end A315686.P5196600223686369535

namespace A315686

/-- `A005843(A008706(n))-A312125(n)` -/
def P5196600223686369535.Spec : Prop :=
  ∀ n, P5196600223686369535.a n = A315686 n

end A315686

/-! ## A315686.P17956833834704758533

`A005843(A008574(n)+n)-A312125(n)`
-/

namespace A315686.P17956833834704758533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312125 n

end

end A315686.P17956833834704758533

namespace A315686

/-- `A005843(A008574(n)+n)-A312125(n)` -/
def P17956833834704758533.Spec : Prop :=
  ∀ n, P17956833834704758533.a n = A315686 n

end A315686

/-! ## A315686.P12366659658281677956

`A001281(A315633(n)+A008458(n))`
-/

namespace A315686.P12366659658281677956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315633 n + A008458 n).toNat

end

end A315686.P12366659658281677956

namespace A315686

/-- `A001281(A315633(n)+A008458(n))` -/
def P12366659658281677956.Spec : Prop :=
  ∀ n, P12366659658281677956.a n = A315686 n

end A315686

/-! ## A315686.P8923746063045061294

`A004525(A315633(n)+A008458(n))`
-/

namespace A315686.P8923746063045061294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315633 n + A008458 n).toNat

end

end A315686.P8923746063045061294

namespace A315686

/-- `A004525(A315633(n)+A008458(n))` -/
def P8923746063045061294.Spec : Prop :=
  ∀ n, P8923746063045061294.a n = A315686 n

end A315686

/-! ## A315686.P11919827288185436167

`A004526(A315633(n)+A008458(n))`
-/

namespace A315686.P11919827288185436167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315633 n + A008458 n).toNat

end

end A315686.P11919827288185436167

namespace A315686

/-- `A004526(A315633(n)+A008458(n))` -/
def P11919827288185436167.Spec : Prop :=
  ∀ n, P11919827288185436167.a n = A315686 n

end A315686

/-!
# A315687: Coordination sequence Gal.6.210.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315687, the canonical program `A315687.P9579488049278104774` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315687 has offset 0).

The definition of A315687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315687.P9579488049278104774

`A312890(n)+A047424(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315687

/-- `A312890(n)+A047424(n+1)` -/
def P9579488049278104774.Spec : Prop :=
  ∀ n, P9579488049278104774.a n = A315687 n

theorem P9579488049278104774.correct : P9579488049278104774.Spec := by
  intro n
  simp only [A315687]

end A315687

/-! ## A315687.P5170310284564629892

`A313485(n)+n`
-/

namespace A315687.P5170310284564629892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + (n : ℤ)

end

end A315687.P5170310284564629892

namespace A315687

/-- `A313485(n)+n` -/
def P5170310284564629892.Spec : Prop :=
  ∀ n, P5170310284564629892.a n = A315687 n

theorem P5170310284564629892.correct : P5170310284564629892.Spec := by
  intro n
  simp only [A315687, Nat.add_sub_cancel, A315687.P5170310284564629892.a, A315687.P9579488049278104774.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A313485, A313485.P7677676480922091384.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315687

/-! ## A315687.P3772747939881704880

`A005843(n)-(n-A313485(n))`
-/

namespace A315687.P3772747939881704880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313485 n)

end

end A315687.P3772747939881704880

namespace A315687

/-- `A005843(n)-(n-A313485(n))` -/
def P3772747939881704880.Spec : Prop :=
  ∀ n, P3772747939881704880.a n = A315687 n

theorem P3772747939881704880.correct : P3772747939881704880.Spec := by
  intro n
  simp only [A315687, Nat.add_sub_cancel, A315687.P3772747939881704880.a, A315687.P9579488049278104774.a, A005843, A005843.P3167286115683555970.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A313485, A313485.P7677676480922091384.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315687

/-! ## A315687.P15404954944504027116

`A000027(A313485(n)-(n-2*n))`
-/

namespace A315687.P15404954944504027116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A313485 n - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A315687.P15404954944504027116

namespace A315687

/-- `A000027(A313485(n)-(n-2*n))` -/
def P15404954944504027116.Spec : Prop :=
  ∀ n, P15404954944504027116.a n = A315687 n

end A315687

/-! ## A315687.P3104241766686433597

`A134667(n)+A310373(n)+n`
-/

namespace A315687.P3104241766686433597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A310373 n + (n : ℤ))

end

end A315687.P3104241766686433597

namespace A315687

/-- `A134667(n)+A310373(n)+n` -/
def P3104241766686433597.Spec : Prop :=
  ∀ n, P3104241766686433597.a n = A315687 n

end A315687

/-! ## A315687.P8169252749819838592

`abs(A008592(n)-A312123(n))`
-/

namespace A315687.P8169252749819838592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312123 n|

end

end A315687.P8169252749819838592

namespace A315687

/-- `abs(A008592(n)-A312123(n))` -/
def P8169252749819838592.Spec : Prop :=
  ∀ n, P8169252749819838592.a n = A315687 n

end A315687

/-! ## A315687.P1986068884072657716

`A008458(n)+A008574(n)-A312123(n)`
-/

namespace A315687.P1986068884072657716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312123 n)

end

end A315687.P1986068884072657716

namespace A315687

/-- `A008458(n)+A008574(n)-A312123(n)` -/
def P1986068884072657716.Spec : Prop :=
  ∀ n, P1986068884072657716.a n = A315687 n

end A315687

/-! ## A315687.P3737406257667986608

`A128834(n)+A313088(n)+n`
-/

namespace A315687.P3737406257667986608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313088 n + (n : ℤ))

end

end A315687.P3737406257667986608

namespace A315687

/-- `A128834(n)+A313088(n)+n` -/
def P3737406257667986608.Spec : Prop :=
  ∀ n, P3737406257667986608.a n = A315687 n

end A315687

/-! ## A315687.P12138190269681302309

`A315413(n)+Δ[A011848(n)]`
-/

namespace A315687.P12138190269681302309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n + (f1 (n + 1) - f1 n)

end

end A315687.P12138190269681302309

namespace A315687

/-- `A315413(n)+Δ[A011848(n)]` -/
def P12138190269681302309.Spec : Prop :=
  ∀ n, P12138190269681302309.a n = A315687 n

end A315687

/-! ## A315687.P6793738210581031033

`A315413(n)+n-A004525(n)`
-/

namespace A315687.P6793738210581031033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n + ((n : ℤ) - A004525 n)

end

end A315687.P6793738210581031033

namespace A315687

/-- `A315413(n)+n-A004525(n)` -/
def P6793738210581031033.Spec : Prop :=
  ∀ n, P6793738210581031033.a n = A315687 n

theorem P6793738210581031033.correct : P6793738210581031033.Spec := by
  intro n
  simp only [A315687, Nat.add_sub_cancel, A315687.P6793738210581031033.a, A315687.P9579488049278104774.a, A004525, A004525.P4158271949796742323.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A315413, A315413.P11341791677008129181.a, A008574, A008574.P1300280032690682112.a, A313485, A313485.P7677676480922091384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315687

/-! ## A315687.P7231178952927993225

`A314107(n)+A004396(A004525(n))`
-/

namespace A315687.P7231178952927993225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n + A004396 (A004525 n).toNat

end

end A315687.P7231178952927993225

namespace A315687

/-- `A314107(n)+A004396(A004525(n))` -/
def P7231178952927993225.Spec : Prop :=
  ∀ n, P7231178952927993225.a n = A315687 n

theorem P7231178952927993225.correct : P7231178952927993225.Spec := by
  intro n
  simp only [A315687, Nat.add_sub_cancel, A315687.P7231178952927993225.a, A315687.P9579488049278104774.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, A314107, A314107.P2990438990150127076.a, A008574, A008574.P1300280032690682112.a, A313485, A313485.P7677676480922091384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315687

/-! ## A315687.P10049897707297236592

`A004525(n)+A315675(n)-A004396(A004525(n))`
-/

namespace A315687.P10049897707297236592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315675 n - A004396 (A004525 n).toNat)

end

end A315687.P10049897707297236592

namespace A315687

/-- `A004525(n)+A315675(n)-A004396(A004525(n))` -/
def P10049897707297236592.Spec : Prop :=
  ∀ n, P10049897707297236592.a n = A315687 n

end A315687

/-! ## A315687.P6235324017267487756

`abs(A008593(n)-A313924(n))`
-/

namespace A315687.P6235324017267487756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A313924 n|

end

end A315687.P6235324017267487756

namespace A315687

/-- `abs(A008593(n)-A313924(n))` -/
def P6235324017267487756.Spec : Prop :=
  ∀ n, P6235324017267487756.a n = A315687 n

end A315687

/-! ## A315687.P3019203432923504226

`A314236(n)+A128834(n)`
-/

namespace A315687.P3019203432923504226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n + A128834 n

end

end A315687.P3019203432923504226

namespace A315687

/-- `A314236(n)+A128834(n)` -/
def P3019203432923504226.Spec : Prop :=
  ∀ n, P3019203432923504226.a n = A315687 n

end A315687

/-! ## A315687.P3721572362909458448

`A314236(n)-A010892(n+2)`
-/

namespace A315687.P3721572362909458448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n - A010892 (n + 2)

end

end A315687.P3721572362909458448

namespace A315687

/-- `A314236(n)-A010892(n+2)` -/
def P3721572362909458448.Spec : Prop :=
  ∀ n, P3721572362909458448.a n = A315687 n

end A315687

/-! ## A315687.P2904782778580314502

`A314236(n)+A046978(A004396(2*n))`
-/

namespace A315687.P2904782778580314502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n + A046978 (A004396 (2 * n)).toNat

end

end A315687.P2904782778580314502

namespace A315687

/-- `A314236(n)+A046978(A004396(2*n))` -/
def P2904782778580314502.Spec : Prop :=
  ∀ n, P2904782778580314502.a n = A315687 n

end A315687

/-! ## A315687.P15387029930026650912

`A004396(A004525(n))+A315700(n)-A004525(n)`
-/

namespace A315687.P15387029930026650912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315700 n - A004525 n)

end

end A315687.P15387029930026650912

namespace A315687

/-- `A004396(A004525(n))+A315700(n)-A004525(n)` -/
def P15387029930026650912.Spec : Prop :=
  ∀ n, P15387029930026650912.a n = A315687 n

end A315687

/-! ## A315687.P16718377786250634510

`A315763(n)-A047513(n+1)+n`
-/

namespace A315687.P16718377786250634510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047513 (n + 1) + (n : ℤ)

end

end A315687.P16718377786250634510

namespace A315687

/-- `A315763(n)-A047513(n+1)+n` -/
def P16718377786250634510.Spec : Prop :=
  ∀ n, P16718377786250634510.a n = A315687 n

end A315687

/-!
# A315688: Coordination sequence Gal.6.343.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315688, the canonical program `A315688.P5634328764802733599` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315688 has offset 0).

The definition of A315688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315688.P5634328764802733599

`A219529(n)+A046978(A004396(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315688

/-- `A219529(n)+A046978(A004396(n))` -/
def P5634328764802733599.Spec : Prop :=
  ∀ n, P5634328764802733599.a n = A315688 n

theorem P5634328764802733599.correct : P5634328764802733599.Spec := by
  intro n
  simp only [A315688]

end A315688

/-! ## A315688.P7957195441989910216

`abs(A008592(n)-A312113(n))`
-/

namespace A315688.P7957195441989910216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312113 n|

end

end A315688.P7957195441989910216

namespace A315688

/-- `abs(A008592(n)-A312113(n))` -/
def P7957195441989910216.Spec : Prop :=
  ∀ n, P7957195441989910216.a n = A315688 n

end A315688

/-! ## A315688.P13627763559130760949

`2*A008706(n)-A312113(n)`
-/

namespace A315688.P13627763559130760949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312113 n

end

end A315688.P13627763559130760949

namespace A315688

/-- `2*A008706(n)-A312113(n)` -/
def P13627763559130760949.Spec : Prop :=
  ∀ n, P13627763559130760949.a n = A315688 n

end A315688

/-! ## A315688.P2625217147838506606

`A008458(n)+A008574(n)-A312113(n)`
-/

namespace A315688.P2625217147838506606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312113 n)

end

end A315688.P2625217147838506606

namespace A315688

/-- `A008458(n)+A008574(n)-A312113(n)` -/
def P2625217147838506606.Spec : Prop :=
  ∀ n, P2625217147838506606.a n = A315688 n

end A315688

/-! ## A315688.P17703972122024344749

`A314091(n)+A004525(n)`
-/

namespace A315688.P17703972122024344749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A004525 n

end

end A315688.P17703972122024344749

namespace A315688

/-- `A314091(n)+A004525(n)` -/
def P17703972122024344749.Spec : Prop :=
  ∀ n, P17703972122024344749.a n = A315688 n

theorem P17703972122024344749.correct : P17703972122024344749.Spec := by
  intro n
  simp only [A315688, Nat.add_sub_cancel, A315688.P17703972122024344749.a, A315688.P5634328764802733599.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A046978, A046978.P71107966793699888.a, A219529, A219529.P11562670573213702759.a, A314091, A314091.P13894877024748748489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315688

/-! ## A315688.P14966448879355640530

`A314091(n)+Δ[A054925(n)]`
-/

namespace A315688.P14966448879355640530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + (f1 (n + 1) - f1 n)

end

end A315688.P14966448879355640530

namespace A315688

/-- `A314091(n)+Δ[A054925(n)]` -/
def P14966448879355640530.Spec : Prop :=
  ∀ n, P14966448879355640530.a n = A315688 n

end A315688

/-! ## A315688.P154047842137943278

`A315465(n)+∑[A022003(n)]`
-/

namespace A315688.P154047842137943278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315688.P154047842137943278

namespace A315688

/-- `A315465(n)+∑[A022003(n)]` -/
def P154047842137943278.Spec : Prop :=
  ∀ n, P154047842137943278.a n = A315688 n

end A315688

/-! ## A315688.P14205283770903175154

`A315465(n)+A002264(n+1)`
-/

namespace A315688.P14205283770903175154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + A002264 (n + 1)

end

end A315688.P14205283770903175154

namespace A315688

/-- `A315465(n)+A002264(n+1)` -/
def P14205283770903175154.Spec : Prop :=
  ∀ n, P14205283770903175154.a n = A315688 n

end A315688

/-! ## A315688.P15544588001365895168

`A315465(n)+A008615(2*n+1)`
-/

namespace A315688.P15544588001365895168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315465 n + A008615 (2 * n + 1)

end

end A315688.P15544588001365895168

namespace A315688

/-- `A315465(n)+A008615(2*n+1)` -/
def P15544588001365895168.Spec : Prop :=
  ∀ n, P15544588001365895168.a n = A315688 n

end A315688

/-! ## A315688.P2490253207166514268

`A042965(n+1)+A315465(n)-n`
-/

namespace A315688.P2490253207166514268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A315465 n - (n : ℤ))

end

end A315688.P2490253207166514268

namespace A315688

/-- `A042965(n+1)+A315465(n)-n` -/
def P2490253207166514268.Spec : Prop :=
  ∀ n, P2490253207166514268.a n = A315688 n

end A315688

/-! ## A315688.P3265379872052252527

`A008486(n)+A315465(n)-A008576(n)`
-/

namespace A315688.P3265379872052252527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315465 n - A008576 n)

end

end A315688.P3265379872052252527

namespace A315688

/-- `A008486(n)+A315465(n)-A008576(n)` -/
def P3265379872052252527.Spec : Prop :=
  ∀ n, P3265379872052252527.a n = A315688 n

end A315688

/-! ## A315688.P6563846763003544742

`A314108(n)+A004396(A004525(n))`
-/

namespace A315688.P6563846763003544742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n + A004396 (A004525 n).toNat

end

end A315688.P6563846763003544742

namespace A315688

/-- `A314108(n)+A004396(A004525(n))` -/
def P6563846763003544742.Spec : Prop :=
  ∀ n, P6563846763003544742.a n = A315688 n

end A315688

/-! ## A315688.P3589156908951622036

`A004525(n)+A315673(n)-A004525(A004396(n))`
-/

namespace A315688.P3589156908951622036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315673 n - A004525 (A004396 n).toNat)

end

end A315688.P3589156908951622036

namespace A315688

/-- `A004525(n)+A315673(n)-A004525(A004396(n))` -/
def P3589156908951622036.Spec : Prop :=
  ∀ n, P3589156908951622036.a n = A315688 n

end A315688

/-! ## A315688.P459091751929751119

`A004525(n)+A315741(n)-A004396(n)`
-/

namespace A315688.P459091751929751119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315741 n - A004396 n)

end

end A315688.P459091751929751119

namespace A315688

/-- `A004525(n)+A315741(n)-A004396(n)` -/
def P459091751929751119.Spec : Prop :=
  ∀ n, P459091751929751119.a n = A315688 n

end A315688

/-! ## A315688.P4323692892997766667

`A004396(A004525(n))+A315760(n)-A004396(n)`
-/

namespace A315688.P4323692892997766667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315760 n - A004396 n)

end

end A315688.P4323692892997766667

namespace A315688

/-- `A004396(A004525(n))+A315760(n)-A004396(n)` -/
def P4323692892997766667.Spec : Prop :=
  ∀ n, P4323692892997766667.a n = A315688 n

end A315688

/-! ## A315688.P6274499960569066748

`A005843(A008706(n))-A312113(n)`
-/

namespace A315688.P6274499960569066748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312113 n

end

end A315688.P6274499960569066748

namespace A315688

/-- `A005843(A008706(n))-A312113(n)` -/
def P6274499960569066748.Spec : Prop :=
  ∀ n, P6274499960569066748.a n = A315688 n

end A315688

/-! ## A315688.P2577971937604739971

`A004396(2*A313533(n))-A004396(n)`
-/

namespace A315688.P2577971937604739971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313533 n).toNat - A004396 n

end

end A315688.P2577971937604739971

namespace A315688

/-- `A004396(2*A313533(n))-A004396(n)` -/
def P2577971937604739971.Spec : Prop :=
  ∀ n, P2577971937604739971.a n = A315688 n

end A315688

/-! ## A315688.P9659439092621921777

`A310466(A008574(n))/2-A310466(n)`
-/

namespace A315688.P9659439092621921777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310466 (A008574 n).toNat : ℚ) / 2 - (A310466 n : ℚ)

end

end A315688.P9659439092621921777

namespace A315688

/-- `A310466(A008574(n))/2-A310466(n)` -/
def P9659439092621921777.Spec : Prop :=
  ∀ n, P9659439092621921777.a n = (A315688 n : ℚ)

end A315688

/-!
# A315689: Coordination sequence Gal.6.624.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315689, the canonical program `A315689.P11366853551913023718` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315689 has offset 0).

The definition of A315689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315689.P17061600531256784832

`abs(10*n-A312101(n))`
-/

namespace A315689.P17061600531256784832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312101 n|

end

end A315689.P17061600531256784832

namespace A315689

/-- `abs(10*n-A312101(n))` -/
def P17061600531256784832.Spec : Prop :=
  ∀ n, P17061600531256784832.a n = A315689 n

end A315689

/-! ## A315689.P11366853551913023718

`A314094(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315689

/-- `A314094(n)+A004525(n)` -/
def P11366853551913023718.Spec : Prop :=
  ∀ n, P11366853551913023718.a n = A315689 n

theorem P11366853551913023718.correct : P11366853551913023718.Spec := by
  intro n
  simp only [A315689]

end A315689

/-! ## A315689.P9268166509563595815

`A315467(n)+∑[A022003(n)]`
-/

namespace A315689.P9268166509563595815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315689.P9268166509563595815

namespace A315689

/-- `A315467(n)+∑[A022003(n)]` -/
def P9268166509563595815.Spec : Prop :=
  ∀ n, P9268166509563595815.a n = A315689 n

end A315689

/-! ## A315689.P16960921493324473541

`A314668(n)+∑[A101825(n)]`
-/

namespace A315689.P16960921493324473541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315689.P16960921493324473541

namespace A315689

/-- `A314668(n)+∑[A101825(n)]` -/
def P16960921493324473541.Spec : Prop :=
  ∀ n, P16960921493324473541.a n = A315689 n

end A315689

/-! ## A315689.P4902275690509876744

`A314094(n)+Δ[A054925(n)]`
-/

namespace A315689.P4902275690509876744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n + (f1 (n + 1) - f1 n)

end

end A315689.P4902275690509876744

namespace A315689

/-- `A314094(n)+Δ[A054925(n)]` -/
def P4902275690509876744.Spec : Prop :=
  ∀ n, P4902275690509876744.a n = A315689 n

end A315689

/-! ## A315689.P2176906136010797291

`A314668(n)+record[A283971(n)]`
-/

namespace A315689.P2176906136010797291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315689.P2176906136010797291

namespace A315689

/-- `A314668(n)+record[A283971(n)]` -/
def P2176906136010797291.Spec : Prop :=
  ∀ n, P2176906136010797291.a n = A315689 n

end A315689

/-! ## A315689.P10535643879258623089

`A315467(n)+A002264(n+1)`
-/

namespace A315689.P10535643879258623089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + A002264 (n + 1)

end

end A315689.P10535643879258623089

namespace A315689

/-- `A315467(n)+A002264(n+1)` -/
def P10535643879258623089.Spec : Prop :=
  ∀ n, P10535643879258623089.a n = A315689 n

theorem P10535643879258623089.correct : P10535643879258623089.Spec := by
  intro n
  simp only [A315689, Nat.add_sub_cancel, A315689.P10535643879258623089.a, A315689.P11366853551913023718.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A314094, A314094.P14203817368862660609.a, A315467, A315467.P13448828790190736749.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A313684, A313684.P7430096167787627216.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315689

/-! ## A315689.P15387963623710702895

`A314668(n)+A042965(n+1)`
-/

namespace A315689.P15387963623710702895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + A042965 (n + 1)

end

end A315689.P15387963623710702895

namespace A315689

/-- `A314668(n)+A042965(n+1)` -/
def P15387963623710702895.Spec : Prop :=
  ∀ n, P15387963623710702895.a n = A315689 n

end A315689

/-! ## A315689.P8643050401890249214

`A310452(n)+2*A004396(A004525(n))`
-/

namespace A315689.P8643050401890249214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n + 2 * A004396 (A004525 n).toNat

end

end A315689.P8643050401890249214

namespace A315689

/-- `A310452(n)+2*A004396(A004525(n))` -/
def P8643050401890249214.Spec : Prop :=
  ∀ n, P8643050401890249214.a n = A315689 n

end A315689

/-! ## A315689.P2597823139970512062

`A008458(n)+A008574(n)-A312101(n)`
-/

namespace A315689.P2597823139970512062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312101 n)

end

end A315689.P2597823139970512062

namespace A315689

/-- `A008458(n)+A008574(n)-A312101(n)` -/
def P2597823139970512062.Spec : Prop :=
  ∀ n, P2597823139970512062.a n = A315689 n

end A315689

/-! ## A315689.P14349627216985489063

`A008574(n)+A314668(n)-A008576(n)`
-/

namespace A315689.P14349627216985489063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314668 n - A008576 n)

end

end A315689.P14349627216985489063

namespace A315689

/-- `A008574(n)+A314668(n)-A008576(n)` -/
def P14349627216985489063.Spec : Prop :=
  ∀ n, P14349627216985489063.a n = A315689 n

end A315689

/-! ## A315689.P8219376026078546874

`A008486(n)+A315467(n)-A008576(n)`
-/

namespace A315689.P8219376026078546874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315467 n - A008576 n)

end

end A315689.P8219376026078546874

namespace A315689

/-- `A008486(n)+A315467(n)-A008576(n)` -/
def P8219376026078546874.Spec : Prop :=
  ∀ n, P8219376026078546874.a n = A315689 n

end A315689

/-! ## A315689.P3833554784793788869

`A004525(n)+A315675(n)-A004525(A004396(n))`
-/

namespace A315689.P3833554784793788869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315675 n - A004525 (A004396 n).toNat)

end

end A315689.P3833554784793788869

namespace A315689

/-- `A004525(n)+A315675(n)-A004525(A004396(n))` -/
def P3833554784793788869.Spec : Prop :=
  ∀ n, P3833554784793788869.a n = A315689 n

end A315689

/-! ## A315689.P7325976062630327584

`A315335(A315335(2*n))-A008587(A315335(2*n))`
-/

namespace A315689.P7325976062630327584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 (A315335 (2 * n)).toNat - A008587 (A315335 (2 * n)).toNat

end

end A315689.P7325976062630327584

namespace A315689

/-- `A315335(A315335(2*n))-A008587(A315335(2*n))` -/
def P7325976062630327584.Spec : Prop :=
  ∀ n, P7325976062630327584.a n = A315689 n

end A315689

/-!
# A315690: Coordination sequence Gal.5.135.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315690, the canonical program `A315690.P5988482929167051028` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315690 has offset 0).

The definition of A315690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315690.P5988482929167051028

`A314671(n)+∑[A101825(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A315690

/-- `A314671(n)+∑[A101825(n)]` -/
def P5988482929167051028.Spec : Prop :=
  ∀ n, P5988482929167051028.a n = A315690 n

theorem P5988482929167051028.correct : P5988482929167051028.Spec := by
  intro n
  simp only [A315690]

end A315690

/-! ## A315690.P2861796716262737480

`A314671(n)+record[A283971(n)]`
-/

namespace A315690.P2861796716262737480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315690.P2861796716262737480

namespace A315690

/-- `A314671(n)+record[A283971(n)]` -/
def P2861796716262737480.Spec : Prop :=
  ∀ n, P2861796716262737480.a n = A315690 n

end A315690

/-! ## A315690.P4997622196941865680

`A314671(n)+A042965(n+1)`
-/

namespace A315690.P4997622196941865680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A042965 (n + 1)

end

end A315690.P4997622196941865680

namespace A315690

/-- `A314671(n)+A042965(n+1)` -/
def P4997622196941865680.Spec : Prop :=
  ∀ n, P4997622196941865680.a n = A315690 n

end A315690

/-! ## A315690.P16037754188370446202

`A314671(n)+A004396(2*n)`
-/

namespace A315690.P16037754188370446202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A004396 (2 * n)

end

end A315690.P16037754188370446202

namespace A315690

/-- `A314671(n)+A004396(2*n)` -/
def P16037754188370446202.Spec : Prop :=
  ∀ n, P16037754188370446202.a n = A315690 n

end A315690

/-! ## A315690.P5574694666455518417

`A314671(n)+A004525(A004773(2*n))`
-/

namespace A315690.P5574694666455518417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A004525 (A004773 (2 * n)).toNat

end

end A315690.P5574694666455518417

namespace A315690

/-- `A314671(n)+A004525(A004773(2*n))` -/
def P5574694666455518417.Spec : Prop :=
  ∀ n, P5574694666455518417.a n = A315690 n

end A315690

/-! ## A315690.P5686515554887120139

`A008574(n)+A314671(n)-A008576(n)`
-/

namespace A315690.P5686515554887120139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A314671 n - A008576 n)

end

end A315690.P5686515554887120139

namespace A315690

/-- `A008574(n)+A314671(n)-A008576(n)` -/
def P5686515554887120139.Spec : Prop :=
  ∀ n, P5686515554887120139.a n = A315690 n

end A315690

/-! ## A315690.P4789253889215738001

`abs(A008592(n)-A312100(n))`
-/

namespace A315690.P4789253889215738001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312100 n|

end

end A315690.P4789253889215738001

namespace A315690

/-- `abs(A008592(n)-A312100(n))` -/
def P4789253889215738001.Spec : Prop :=
  ∀ n, P4789253889215738001.a n = A315690 n

end A315690

/-! ## A315690.P1849925222537296957

`2*A008706(n)-A312100(n)`
-/

namespace A315690.P1849925222537296957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312100 n

end

end A315690.P1849925222537296957

namespace A315690

/-- `2*A008706(n)-A312100(n)` -/
def P1849925222537296957.Spec : Prop :=
  ∀ n, P1849925222537296957.a n = A315690 n

end A315690

/-! ## A315690.P10452705874384855903

`A008458(n)+A008574(n)-A312100(n)`
-/

namespace A315690.P10452705874384855903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312100 n)

end

end A315690.P10452705874384855903

namespace A315690

/-- `A008458(n)+A008574(n)-A312100(n)` -/
def P10452705874384855903.Spec : Prop :=
  ∀ n, P10452705874384855903.a n = A315690 n

end A315690

/-! ## A315690.P2289578133840669011

`A312100(n)+A005843(A008706(n)-A312100(n))`
-/

namespace A315690.P2289578133840669011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A005843 (A008706 n - A312100 n).toNat

end

end A315690.P2289578133840669011

namespace A315690

/-- `A312100(n)+A005843(A008706(n)-A312100(n))` -/
def P2289578133840669011.Spec : Prop :=
  ∀ n, P2289578133840669011.a n = A315690 n

end A315690

/-! ## A315690.P7965666358508415917

`A005843(n)+A005843(A008574(n))-A312100(n)`
-/

namespace A315690.P7965666358508415917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312100 n)

end

end A315690.P7965666358508415917

namespace A315690

/-- `A005843(n)+A005843(A008574(n))-A312100(n)` -/
def P7965666358508415917.Spec : Prop :=
  ∀ n, P7965666358508415917.a n = A315690 n

end A315690

/-! ## A315690.P12138082989216075426

`A314671(n)+A002264(A005408(2*n))`
-/

namespace A315690.P12138082989216075426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n + A002264 (A005408 (2 * n)).toNat

end

end A315690.P12138082989216075426

namespace A315690

/-- `A314671(n)+A002264(A005408(2*n))` -/
def P12138082989216075426.Spec : Prop :=
  ∀ n, P12138082989216075426.a n = A315690 n

end A315690

/-! ## A315690.P7664816543238393758

`A313538(n)+A004396(A004396(2*n))`
-/

namespace A315690.P7664816543238393758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A004396 (A004396 (2 * n)).toNat

end

end A315690.P7664816543238393758

namespace A315690

/-- `A313538(n)+A004396(A004396(2*n))` -/
def P7664816543238393758.Spec : Prop :=
  ∀ n, P7664816543238393758.a n = A315690 n

end A315690

/-! ## A315690.P1985602249104954720

`A313538(n)+A004396(A005843(n)-A004396(n))`
-/

namespace A315690.P1985602249104954720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A004396 (A005843 n - A004396 n).toNat

end

end A315690.P1985602249104954720

namespace A315690

/-- `A313538(n)+A004396(A005843(n)-A004396(n))` -/
def P1985602249104954720.Spec : Prop :=
  ∀ n, P1985602249104954720.a n = A315690 n

end A315690

/-! ## A315690.P14163850939351197478

`(A315635(n)+A008458(n))/2`
-/

namespace A315690.P14163850939351197478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315635 n + A008458 n : ℚ) / 2

end

end A315690.P14163850939351197478

namespace A315690

/-- `(A315635(n)+A008458(n))/2` -/
def P14163850939351197478.Spec : Prop :=
  ∀ n, P14163850939351197478.a n = (A315690 n : ℚ)

end A315690

/-! ## A315690.P11847356979594781347

`A314099(n)+A004396(A004396(n))`
-/

namespace A315690.P11847356979594781347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314099 n + A004396 (A004396 n).toNat

end

end A315690.P11847356979594781347

namespace A315690

/-- `A314099(n)+A004396(A004396(n))` -/
def P11847356979594781347.Spec : Prop :=
  ∀ n, P11847356979594781347.a n = A315690 n

end A315690

/-! ## A315690.P13142196425605253871

`A315475(n)+A004396(n-A004396(n))`
-/

namespace A315690.P13142196425605253871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315690.P13142196425605253871

namespace A315690

/-- `A315475(n)+A004396(n-A004396(n))` -/
def P13142196425605253871.Spec : Prop :=
  ∀ n, P13142196425605253871.a n = A315690 n

end A315690

/-! ## A315690.P12487175480083371342

`A315748(n)-Δ[A011862(n)]`
-/

namespace A315690.P12487175480083371342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - (f1 (n + 1) - f1 n)

end

end A315690.P12487175480083371342

namespace A315690

/-- `A315748(n)-Δ[A011862(n)]` -/
def P12487175480083371342.Spec : Prop :=
  ∀ n, P12487175480083371342.a n = A315690 n

end A315690

/-! ## A315690.P2292130473489895530

`A004396(A004396(n))+A315748(n)-A004396(n)`
-/

namespace A315690.P2292130473489895530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315748 n - A004396 n)

end

end A315690.P2292130473489895530

namespace A315690

/-- `A004396(A004396(n))+A315748(n)-A004396(n)` -/
def P2292130473489895530.Spec : Prop :=
  ∀ n, P2292130473489895530.a n = A315690 n

end A315690

/-! ## A315690.P8855131763632156573

`A005843(A008706(n))-A312100(n)`
-/

namespace A315690.P8855131763632156573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312100 n

end

end A315690.P8855131763632156573

namespace A315690

/-- `A005843(A008706(n))-A312100(n)` -/
def P8855131763632156573.Spec : Prop :=
  ∀ n, P8855131763632156573.a n = A315690 n

end A315690

/-!
# A315691: Coordination sequence Gal.5.306.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315691, the canonical program `A315691.P16034797588587239357` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315691 has offset 0).

The definition of A315691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315691.P16034797588587239357

`A008458(n)-A004524(A081599(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315691

/-- `A008458(n)-A004524(A081599(n))` -/
def P16034797588587239357.Spec : Prop :=
  ∀ n, P16034797588587239357.a n = A315691 n

theorem P16034797588587239357.correct : P16034797588587239357.Spec := by
  intro n
  simp only [A315691]

end A315691

/-! ## A315691.P4287088013023788479

`A330025(A330025(n)+n)+A312948(n)+n`
-/

namespace A315691.P4287088013023788479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A312948 n + (n : ℤ)

end

end A315691.P4287088013023788479

namespace A315691

/-- `A330025(A330025(n)+n)+A312948(n)+n` -/
def P4287088013023788479.Spec : Prop :=
  ∀ n, P4287088013023788479.a n = A315691 n

end A315691

/-! ## A315691.P16264193489679585377

`A312892(n)+A047363(n+1)`
-/

namespace A315691.P16264193489679585377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A047363 (n + 1)

end

end A315691.P16264193489679585377

namespace A315691

/-- `A312892(n)+A047363(n+1)` -/
def P16264193489679585377.Spec : Prop :=
  ∀ n, P16264193489679585377.a n = A315691 n

end A315691

/-! ## A315691.P17503577094859458221

`A313476(n)+A151988(n)`
-/

namespace A315691.P17503577094859458221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + A151988 n

end

end A315691.P17503577094859458221

namespace A315691

/-- `A313476(n)+A151988(n)` -/
def P17503577094859458221.Spec : Prop :=
  ∀ n, P17503577094859458221.a n = A315691 n

end A315691

/-! ## A315691.P4324835205454642781

`abs(A008592(n)-A312077(n))`
-/

namespace A315691.P4324835205454642781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312077 n|

end

end A315691.P4324835205454642781

namespace A315691

/-- `abs(A008592(n)-A312077(n))` -/
def P4324835205454642781.Spec : Prop :=
  ∀ n, P4324835205454642781.a n = A315691 n

end A315691

/-! ## A315691.P15765516759786993782

`abs(A008591(n)+n-A312077(n))`
-/

namespace A315691.P15765516759786993782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A312077 n)|

end

end A315691.P15765516759786993782

namespace A315691

/-- `abs(A008591(n)+n-A312077(n))` -/
def P15765516759786993782.Spec : Prop :=
  ∀ n, P15765516759786993782.a n = A315691 n

end A315691

/-! ## A315691.P4999841823619883777

`A008458(n)+A008574(n)-A312077(n)`
-/

namespace A315691.P4999841823619883777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312077 n)

end

end A315691.P4999841823619883777

namespace A315691

/-- `A008458(n)+A008574(n)-A312077(n)` -/
def P4999841823619883777.Spec : Prop :=
  ∀ n, P4999841823619883777.a n = A315691 n

theorem P4999841823619883777.correct : P4999841823619883777.Spec := by
  intro n
  simp only [A315691, Nat.add_sub_cancel, A315691.P4999841823619883777.a, A315691.P16034797588587239357.a, A004524, A004524.P8943215836771390324.a, A008458, A008458.P10936398443463225625.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A312077, A312077.P5583150468324327588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315691

/-! ## A315691.P6328685564026357245

`A005843(n)+A005843(A008574(n))-A312077(n)`
-/

namespace A315691.P6328685564026357245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312077 n)

end

end A315691.P6328685564026357245

namespace A315691

/-- `A005843(n)+A005843(A008574(n))-A312077(n)` -/
def P6328685564026357245.Spec : Prop :=
  ∀ n, P6328685564026357245.a n = A315691 n

end A315691

/-! ## A315691.P8069348325831559970

`A253262(n)+A311552(n)+n`
-/

namespace A315691.P8069348325831559970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A311552 n + (n : ℤ))

end

end A315691.P8069348325831559970

namespace A315691

/-- `A253262(n)+A311552(n)+n` -/
def P8069348325831559970.Spec : Prop :=
  ∀ n, P8069348325831559970.a n = A315691 n

end A315691

/-! ## A315691.P9544913585146176286

`A313506(n)+n`
-/

namespace A315691.P9544913585146176286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n + (n : ℤ)

end

end A315691.P9544913585146176286

namespace A315691

/-- `A313506(n)+n` -/
def P9544913585146176286.Spec : Prop :=
  ∀ n, P9544913585146176286.a n = A315691 n

end A315691

/-! ## A315691.P2818123560301380307

`A005843(n)-(n-A313506(n))`
-/

namespace A315691.P2818123560301380307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313506 n)

end

end A315691.P2818123560301380307

namespace A315691

/-- `A005843(n)-(n-A313506(n))` -/
def P2818123560301380307.Spec : Prop :=
  ∀ n, P2818123560301380307.a n = A315691 n

end A315691

/-! ## A315691.P10674121360262586210

`A008585(n)-(2*n-A313506(n))`
-/

namespace A315691.P10674121360262586210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((2 * n : ℤ) - A313506 n)

end

end A315691.P10674121360262586210

namespace A315691

/-- `A008585(n)-(2*n-A313506(n))` -/
def P10674121360262586210.Spec : Prop :=
  ∀ n, P10674121360262586210.a n = A315691 n

end A315691

/-! ## A315691.P10530246338341299203

`A315397(n)+n-A330025(n)`
-/

namespace A315691.P10530246338341299203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315397 n + ((n : ℤ) - A330025 n)

end

end A315691.P10530246338341299203

namespace A315691

/-- `A315397(n)+n-A330025(n)` -/
def P10530246338341299203.Spec : Prop :=
  ∀ n, P10530246338341299203.a n = A315691 n

end A315691

/-! ## A315691.P13732104629209259303

`A313692(n)+A057354(2*n+1)`
-/

namespace A315691.P13732104629209259303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + A057354 (2 * n + 1)

end

end A315691.P13732104629209259303

namespace A315691

/-- `A313692(n)+A057354(2*n+1)` -/
def P13732104629209259303.Spec : Prop :=
  ∀ n, P13732104629209259303.a n = A315691 n

end A315691

/-! ## A315691.P4075837810373693117

`A313692(n)+n-A008676(A016777(n))`
-/

namespace A315691.P4075837810373693117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n + ((n : ℤ) - A008676 (A016777 n).toNat)

end

end A315691.P4075837810373693117

namespace A315691

/-- `A313692(n)+n-A008676(A016777(n))` -/
def P4075837810373693117.Spec : Prop :=
  ∀ n, P4075837810373693117.a n = A315691 n

end A315691

/-! ## A315691.P16403759628193761613

`(A315637(n)+A008458(n))/2`
-/

namespace A315691.P16403759628193761613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315637 n + A008458 n : ℚ) / 2

end

end A315691.P16403759628193761613

namespace A315691

/-- `(A315637(n)+A008458(n))/2` -/
def P16403759628193761613.Spec : Prop :=
  ∀ n, P16403759628193761613.a n = (A315691 n : ℚ)

end A315691

/-! ## A315691.P16114908559129654061

`A315755(n)-A253262(n-A253262(n))`
-/

namespace A315691.P16114908559129654061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - A253262 ((n : ℤ) - A253262 n).toNat

end

end A315691.P16114908559129654061

namespace A315691

/-- `A315755(n)-A253262(n-A253262(n))` -/
def P16114908559129654061.Spec : Prop :=
  ∀ n, P16114908559129654061.a n = A315691 n

end A315691

/-! ## A315691.P18191263411077473810

`A315749(n)-A047263(n+1)+n`
-/

namespace A315691.P18191263411077473810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315749 n - A047263 (n + 1) + (n : ℤ)

end

end A315691.P18191263411077473810

namespace A315691

/-- `A315749(n)-A047263(n+1)+n` -/
def P18191263411077473810.Spec : Prop :=
  ∀ n, P18191263411077473810.a n = A315691 n

end A315691

/-! ## A315691.P18267138248767907707

`A005843(A008574(n)+n)-A312077(n)`
-/

namespace A315691.P18267138248767907707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312077 n

end

end A315691.P18267138248767907707

namespace A315691

/-- `A005843(A008574(n)+n)-A312077(n)` -/
def P18267138248767907707.Spec : Prop :=
  ∀ n, P18267138248767907707.a n = A315691 n

end A315691

/-! ## A315691.P8567590249933278195

`A330025(A330025(n)+n)+A314164(n)`
-/

namespace A315691.P8567590249933278195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A314164 n

end

end A315691.P8567590249933278195

namespace A315691

/-- `A330025(A330025(n)+n)+A314164(n)` -/
def P8567590249933278195.Spec : Prop :=
  ∀ n, P8567590249933278195.a n = A315691 n

end A315691

/-!
# A315692: Coordination sequence Gal.6.334.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315692, the canonical program `A315692.P13280674263437202447` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315692 has offset 0).

The definition of A315692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315692.P13280674263437202447

`abs(A008592(n)-A312068(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315692

/-- `abs(A008592(n)-A312068(n))` -/
def P13280674263437202447.Spec : Prop :=
  ∀ n, P13280674263437202447.a n = A315692 n

theorem P13280674263437202447.correct : P13280674263437202447.Spec := by
  intro n
  simp only [A315692]

end A315692

/-! ## A315692.P17507943939106781039

`2*A008706(n)-A312068(n)`
-/

namespace A315692.P17507943939106781039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312068 n

end

end A315692.P17507943939106781039

namespace A315692

/-- `2*A008706(n)-A312068(n)` -/
def P17507943939106781039.Spec : Prop :=
  ∀ n, P17507943939106781039.a n = A315692 n

end A315692

/-! ## A315692.P8023808577132523745

`(A315638(n)+A008458(n))/2`
-/

namespace A315692.P8023808577132523745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315638 n + A008458 n : ℚ) / 2

end

end A315692.P8023808577132523745

namespace A315692

/-- `(A315638(n)+A008458(n))/2` -/
def P8023808577132523745.Spec : Prop :=
  ∀ n, P8023808577132523745.a n = (A315692 n : ℚ)

end A315692

/-! ## A315692.P5196694705536382827

`A008458(n)+A008574(n)-A312068(n)`
-/

namespace A315692.P5196694705536382827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312068 n)

end

end A315692.P5196694705536382827

namespace A315692

/-- `A008458(n)+A008574(n)-A312068(n)` -/
def P5196694705536382827.Spec : Prop :=
  ∀ n, P5196694705536382827.a n = A315692 n

end A315692

/-! ## A315692.P16206633013022277786

`∑{d}[A008592(n)-A312068(n), A000010(#)]`
-/

namespace A315692.P16206633013022277786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315692.P16206633013022277786

namespace A315692

/-- `∑{d}[A008592(n)-A312068(n), A000010(#)]` -/
def P16206633013022277786.Spec : Prop :=
  ∀ n, P16206633013022277786.a n = A315692 n

end A315692

/-! ## A315692.P9105062479506364235

`A005843(n)+A005843(A008574(n))-A312068(n)`
-/

namespace A315692.P9105062479506364235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312068 n)

end

end A315692.P9105062479506364235

namespace A315692

/-- `A005843(n)+A005843(A008574(n))-A312068(n)` -/
def P9105062479506364235.Spec : Prop :=
  ∀ n, P9105062479506364235.a n = A315692 n

end A315692

/-! ## A315692.P9384205717937834700

`A312068(n)+A005843(A008706(n)-A312068(n))`
-/

namespace A315692.P9384205717937834700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + A005843 (A008706 n - A312068 n).toNat

end

end A315692.P9384205717937834700

namespace A315692

/-- `A312068(n)+A005843(A008706(n)-A312068(n))` -/
def P9384205717937834700.Spec : Prop :=
  ∀ n, P9384205717937834700.a n = A315692 n

end A315692

/-! ## A315692.P4023347759427976560

`A315638(n)+A001281(A008458(n)-A315638(n))`
-/

namespace A315692.P4023347759427976560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315638 n + A001281 (A008458 n - A315638 n).toNat

end

end A315692.P4023347759427976560

namespace A315692

/-- `A315638(n)+A001281(A008458(n)-A315638(n))` -/
def P4023347759427976560.Spec : Prop :=
  ∀ n, P4023347759427976560.a n = A315692 n

end A315692

/-! ## A315692.P10216515225093742752

`A315638(n)+A004525(A008458(n)-A315638(n))`
-/

namespace A315692.P10216515225093742752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315638 n + A004525 (A008458 n - A315638 n).toNat

end

end A315692.P10216515225093742752

namespace A315692

/-- `A315638(n)+A004525(A008458(n)-A315638(n))` -/
def P10216515225093742752.Spec : Prop :=
  ∀ n, P10216515225093742752.a n = A315692 n

end A315692

/-! ## A315692.P10799579698827218949

`A008458(n)-A004526(A008458(n)-A315638(n))`
-/

namespace A315692.P10799579698827218949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315638 n).toNat

end

end A315692.P10799579698827218949

namespace A315692

/-- `A008458(n)-A004526(A008458(n)-A315638(n))` -/
def P10799579698827218949.Spec : Prop :=
  ∀ n, P10799579698827218949.a n = A315692 n

end A315692

/-! ## A315692.P10568811089157530661

`A005843(A008706(n))-A312068(n)`
-/

namespace A315692.P10568811089157530661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312068 n

end

end A315692.P10568811089157530661

namespace A315692

/-- `A005843(A008706(n))-A312068(n)` -/
def P10568811089157530661.Spec : Prop :=
  ∀ n, P10568811089157530661.a n = A315692 n

end A315692

/-! ## A315692.P491374101051094453

`A005843(A008574(n)+n)-A312068(n)`
-/

namespace A315692.P491374101051094453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312068 n

end

end A315692.P491374101051094453

namespace A315692

/-- `A005843(A008574(n)+n)-A312068(n)` -/
def P491374101051094453.Spec : Prop :=
  ∀ n, P491374101051094453.a n = A315692 n

end A315692

/-! ## A315692.P14727286598306485816

`A008486(n)+A004526(A315638(n))`
-/

namespace A315692.P14727286598306485816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315638 n).toNat

end

end A315692.P14727286598306485816

namespace A315692

/-- `A008486(n)+A004526(A315638(n))` -/
def P14727286598306485816.Spec : Prop :=
  ∀ n, P14727286598306485816.a n = A315692 n

end A315692

/-! ## A315692.P16579344207863619814

`2*n+A004396(A315642(n))`
-/

namespace A315692.P16579344207863619814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315642 n).toNat

end

end A315692.P16579344207863619814

namespace A315692

/-- `2*n+A004396(A315642(n))` -/
def P16579344207863619814.Spec : Prop :=
  ∀ n, P16579344207863619814.a n = A315692 n

end A315692

/-! ## A315692.P12264606011494512344

`A008585(n)-(n-A004396(A315642(n)))`
-/

namespace A315692.P12264606011494512344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315642 n).toNat)

end

end A315692.P12264606011494512344

namespace A315692

/-- `A008585(n)-(n-A004396(A315642(n)))` -/
def P12264606011494512344.Spec : Prop :=
  ∀ n, P12264606011494512344.a n = A315692 n

end A315692

/-! ## A315692.P8945909173022465544

`A004396(A313718(2*n)-n)`
-/

namespace A315692.P8945909173022465544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313718 (2 * n) - (n : ℤ)).toNat

end

end A315692.P8945909173022465544

namespace A315692

/-- `A004396(A313718(2*n)-n)` -/
def P8945909173022465544.Spec : Prop :=
  ∀ n, P8945909173022465544.a n = A315692 n

end A315692

/-! ## A315692.P3936812686150592049

`A004396(A315642(n)+A008486(n))`
-/

namespace A315692.P3936812686150592049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315642 n + A008486 n).toNat

end

end A315692.P3936812686150592049

namespace A315692

/-- `A004396(A315642(n)+A008486(n))` -/
def P3936812686150592049.Spec : Prop :=
  ∀ n, P3936812686150592049.a n = A315692 n

end A315692

/-! ## A315692.P8632857902857944800

`A004396(A315642(n)+A008585(n))`
-/

namespace A315692.P8632857902857944800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315642 n + A008585 n).toNat

end

end A315692.P8632857902857944800

namespace A315692

/-- `A004396(A315642(n)+A008585(n))` -/
def P8632857902857944800.Spec : Prop :=
  ∀ n, P8632857902857944800.a n = A315692 n

end A315692

/-! ## A315692.P15326540710849093510

`A315756(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A315692.P15326540710849093510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315756 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A315692.P15326540710849093510

namespace A315692

/-- `A315756(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P15326540710849093510.Spec : Prop :=
  ∀ n, P15326540710849093510.a n = (A315692 n : ℚ)

end A315692

/-! ## A315692.P11059263057319326817

`A004525(A315756(2*n))`
-/

namespace A315692.P11059263057319326817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315756 (2 * n)).toNat

end

end A315692.P11059263057319326817

namespace A315692

/-- `A004525(A315756(2*n))` -/
def P11059263057319326817.Spec : Prop :=
  ∀ n, P11059263057319326817.a n = A315692 n

end A315692

/-!
# A315693: Coordination sequence Gal.3.50.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315693, the canonical program `A315693.P3604265791243145229` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315693 has offset 0).

The definition of A315693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315693.P15563190161860649398

`A134667(n)+A298024(n)+n`
-/

namespace A315693.P15563190161860649398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A298024 n + (n : ℤ))

end

end A315693.P15563190161860649398

namespace A315693

/-- `A134667(n)+A298024(n)+n` -/
def P15563190161860649398.Spec : Prop :=
  ∀ n, P15563190161860649398.a n = A315693 n

end A315693

/-! ## A315693.P3604265791243145229

`A047424(n+1)+A298786(n)+n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A315693

/-- `A047424(n+1)+A298786(n)+n` -/
def P3604265791243145229.Spec : Prop :=
  ∀ n, P3604265791243145229.a n = A315693 n

theorem P3604265791243145229.correct : P3604265791243145229.Spec := by
  intro n
  simp only [A315693]

end A315693

/-! ## A315693.P3500826236562972854

`A008458(n)-A047513(n+1)+n`
-/

namespace A315693.P3500826236562972854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047513 (n + 1) + (n : ℤ)

end

end A315693.P3500826236562972854

namespace A315693

/-- `A008458(n)-A047513(n+1)+n` -/
def P3500826236562972854.Spec : Prop :=
  ∀ n, P3500826236562972854.a n = A315693 n

end A315693

/-! ## A315693.P1757278677454012962

`A219529(n)+A004525(A004396(n))`
-/

namespace A315693.P1757278677454012962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A004525 (A004396 n).toNat

end

end A315693.P1757278677454012962

namespace A315693

/-- `A219529(n)+A004525(A004396(n))` -/
def P1757278677454012962.Spec : Prop :=
  ∀ n, P1757278677454012962.a n = A315693 n

end A315693

/-! ## A315693.P12663938801797626712

`A219529(n)+A004525(A274616(n))`
-/

namespace A315693.P12663938801797626712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A004525 (A274616 n).toNat

end

end A315693.P12663938801797626712

namespace A315693

/-- `A219529(n)+A004525(A274616(n))` -/
def P12663938801797626712.Spec : Prop :=
  ∀ n, P12663938801797626712.a n = A315693 n

end A315693

/-! ## A315693.P9497968506756818242

`A001489(2*n)+A312926(2*n)-n`
-/

namespace A315693.P9497968506756818242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n) + (A312926 (2 * n) - (n : ℤ))

end

end A315693.P9497968506756818242

namespace A315693

/-- `A001489(2*n)+A312926(2*n)-n` -/
def P9497968506756818242.Spec : Prop :=
  ∀ n, P9497968506756818242.a n = A315693 n

end A315693

/-! ## A315693.P4469630847595576863

`A314677(n)+A042965(n+1)`
-/

namespace A315693.P4469630847595576863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A042965 (n + 1)

end

end A315693.P4469630847595576863

namespace A315693

/-- `A314677(n)+A042965(n+1)` -/
def P4469630847595576863.Spec : Prop :=
  ∀ n, P4469630847595576863.a n = A315693 n

end A315693

/-! ## A315693.P6777081573950617254

`A314677(n)+A004396(2*n)`
-/

namespace A315693.P6777081573950617254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n + A004396 (2 * n)

end

end A315693.P6777081573950617254

namespace A315693

/-- `A314677(n)+A004396(2*n)` -/
def P6777081573950617254.Spec : Prop :=
  ∀ n, P6777081573950617254.a n = A315693 n

end A315693

/-! ## A315693.P14784934680988415379

`A312901(n)+A047424(n+1)`
-/

namespace A315693.P14784934680988415379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312901 n + A047424 (n + 1)

end

end A315693.P14784934680988415379

namespace A315693

/-- `A312901(n)+A047424(n+1)` -/
def P14784934680988415379.Spec : Prop :=
  ∀ n, P14784934680988415379.a n = A315693 n

end A315693

/-! ## A315693.P3964913960960473166

`abs(10*n-A312065(n))`
-/

namespace A315693.P3964913960960473166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312065 n|

end

end A315693.P3964913960960473166

namespace A315693

/-- `abs(10*n-A312065(n))` -/
def P3964913960960473166.Spec : Prop :=
  ∀ n, P3964913960960473166.a n = A315693 n

end A315693

/-! ## A315693.P1740180709221738492

`A008458(n)+A008574(n)-A312065(n)`
-/

namespace A315693.P1740180709221738492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312065 n)

end

end A315693.P1740180709221738492

namespace A315693

/-- `A008458(n)+A008574(n)-A312065(n)` -/
def P1740180709221738492.Spec : Prop :=
  ∀ n, P1740180709221738492.a n = A315693 n

end A315693

/-! ## A315693.P15014400467874176939

`A315178(n)+n-A134667(n)`
-/

namespace A315693.P15014400467874176939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315178 n + ((n : ℤ) - A134667 n)

end

end A315693.P15014400467874176939

namespace A315693

/-- `A315178(n)+n-A134667(n)` -/
def P15014400467874176939.Spec : Prop :=
  ∀ n, P15014400467874176939.a n = A315693 n

end A315693

/-! ## A315693.P5621633028818529129

`A128834(n)+A313110(n)+n`
-/

namespace A315693.P5621633028818529129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A313110 n + (n : ℤ))

end

end A315693.P5621633028818529129

namespace A315693

/-- `A128834(n)+A313110(n)+n` -/
def P5621633028818529129.Spec : Prop :=
  ∀ n, P5621633028818529129.a n = A315693 n

end A315693

/-! ## A315693.P5204914392507347793

`A313510(n)+n`
-/

namespace A315693.P5204914392507347793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + (n : ℤ)

end

end A315693.P5204914392507347793

namespace A315693

/-- `A313510(n)+n` -/
def P5204914392507347793.Spec : Prop :=
  ∀ n, P5204914392507347793.a n = A315693 n

end A315693

/-! ## A315693.P10992395217663155951

`A314015(n)+A004396(n)`
-/

namespace A315693.P10992395217663155951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n + A004396 n

end

end A315693.P10992395217663155951

namespace A315693

/-- `A314015(n)+A004396(n)` -/
def P10992395217663155951.Spec : Prop :=
  ∀ n, P10992395217663155951.a n = A315693 n

end A315693

/-! ## A315693.P6878426108967200713

`A314097(n)+A004525(n)`
-/

namespace A315693.P6878426108967200713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314097 n + A004525 n

end

end A315693.P6878426108967200713

namespace A315693

/-- `A314097(n)+A004525(n)` -/
def P6878426108967200713.Spec : Prop :=
  ∀ n, P6878426108967200713.a n = A315693 n

end A315693

/-! ## A315693.P11020229612773441384

`round(A315471(n)+n/3)`
-/

namespace A315693.P11020229612773441384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315471 n : ℚ) + (n : ℚ) / 3)

end

end A315693.P11020229612773441384

namespace A315693

/-- `round(A315471(n)+n/3)` -/
def P11020229612773441384.Spec : Prop :=
  ∀ n, P11020229612773441384.a n = A315693 n

end A315693

/-! ## A315693.P18303151011075276514

`A315471(n)+A002264(n+1)`
-/

namespace A315693.P18303151011075276514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n + A002264 (n + 1)

end

end A315693.P18303151011075276514

namespace A315693

/-- `A315471(n)+A002264(n+1)` -/
def P18303151011075276514.Spec : Prop :=
  ∀ n, P18303151011075276514.a n = A315693 n

end A315693

/-! ## A315693.P2883605858368182549

`A315471(n)+n-A004396(n)`
-/

namespace A315693.P2883605858368182549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n + ((n : ℤ) - A004396 n)

end

end A315693.P2883605858368182549

namespace A315693

/-- `A315471(n)+n-A004396(n)` -/
def P2883605858368182549.Spec : Prop :=
  ∀ n, P2883605858368182549.a n = A315693 n

end A315693

/-! ## A315693.P1595440113863187911

`A008486(n)+A315471(n)-A008576(n)`
-/

namespace A315693.P1595440113863187911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315471 n - A008576 n)

end

end A315693.P1595440113863187911

namespace A315693

/-- `A008486(n)+A315471(n)-A008576(n)` -/
def P1595440113863187911.Spec : Prop :=
  ∀ n, P1595440113863187911.a n = A315693 n

end A315693

/-!
# A315694: Coordination sequence Gal.5.321.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315694, there is no canonical definition to state claims against.
-/

/-! ## A315694.P11601468985060414099

`∑[∑{e}[Δ[A272146(n)], #]]`
-/

namespace A315694.P11601468985060414099
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315694.P11601468985060414099

/-! ## A315694.P10258151049165062076

`A008587(n)+A000120(A024025(n))`
-/

namespace A315694.P10258151049165062076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A000120 (A024025 n).toNat

end

end A315694.P10258151049165062076

/-! ## A315694.P1297336332946533080

`A301726(n)+A001221(A003149(n))`
-/

namespace A315694.P1297336332946533080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n + A001221 (A003149 n).toNat

end

end A315694.P1297336332946533080

/-! ## A315694.P15487759918621225353

`A315677(n)+A144193(A000041(n))`
-/

namespace A315694.P15487759918621225353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315677 n + A144193 (A000041 n).toNat

end

end A315694.P15487759918621225353

/-! ## A315694.P16279307755824629377

`A008458(n)-A131555(A002851(n))`
-/

namespace A315694.P16279307755824629377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A131555 (A002851 n).toNat

end

end A315694.P16279307755824629377

/-!
# A315695: Coordination sequence Gal.6.620.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315695, the canonical program `A315695.P671725202491789356` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315695 has offset 0).

The definition of A315695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315695.P15662854016771893185

`abs(10*n-A311994(n))`
-/

namespace A315695.P15662854016771893185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A311994 n|

end

end A315695.P15662854016771893185

namespace A315695

/-- `abs(10*n-A311994(n))` -/
def P15662854016771893185.Spec : Prop :=
  ∀ n, P15662854016771893185.a n = A315695 n

end A315695

/-! ## A315695.P991189208649794890

`2*A008706(n)-A311994(n)`
-/

namespace A315695.P991189208649794890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311994 n

end

end A315695.P991189208649794890

namespace A315695

/-- `2*A008706(n)-A311994(n)` -/
def P991189208649794890.Spec : Prop :=
  ∀ n, P991189208649794890.a n = A315695 n

end A315695

/-! ## A315695.P671725202491789356

`2*A313722(n)-A311889(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315695

/-- `2*A313722(n)-A311889(n)` -/
def P671725202491789356.Spec : Prop :=
  ∀ n, P671725202491789356.a n = A315695 n

theorem P671725202491789356.correct : P671725202491789356.Spec := by
  intro n
  simp only [A315695]

end A315695

/-! ## A315695.P4347426547938665478

`A135042(2*n+1)-A311994(n)`
-/

namespace A315695.P4347426547938665478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A311994 n

end

end A315695.P4347426547938665478

namespace A315695

/-- `A135042(2*n+1)-A311994(n)` -/
def P4347426547938665478.Spec : Prop :=
  ∀ n, P4347426547938665478.a n = A315695 n

end A315695

/-! ## A315695.P11866196390721857267

`A008458(n)+A008574(n)-A311994(n)`
-/

namespace A315695.P11866196390721857267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311994 n)

end

end A315695.P11866196390721857267

namespace A315695

/-- `A008458(n)+A008574(n)-A311994(n)` -/
def P11866196390721857267.Spec : Prop :=
  ∀ n, P11866196390721857267.a n = A315695 n

end A315695

/-! ## A315695.P13235434258487116291

`A311994(n)+A005843(A008706(n)-A311994(n))`
-/

namespace A315695.P13235434258487116291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n + A005843 (A008706 n - A311994 n).toNat

end

end A315695.P13235434258487116291

namespace A315695

/-- `A311994(n)+A005843(A008706(n)-A311994(n))` -/
def P13235434258487116291.Spec : Prop :=
  ∀ n, P13235434258487116291.a n = A315695 n

end A315695

/-! ## A315695.P7792515832128232798

`A008458(n)-A004525(A008458(n)-A315667(n))`
-/

namespace A315695.P7792515832128232798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315667 n).toNat

end

end A315695.P7792515832128232798

namespace A315695

/-- `A008458(n)-A004525(A008458(n)-A315667(n))` -/
def P7792515832128232798.Spec : Prop :=
  ∀ n, P7792515832128232798.a n = A315695 n

end A315695

/-! ## A315695.P18015354889298885090

`A315743(n)-Δ[A011864(n)]`
-/

namespace A315695.P18015354889298885090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315743 n - (f1 (n + 1) - f1 n)

end

end A315695.P18015354889298885090

namespace A315695

/-- `A315743(n)-Δ[A011864(n)]` -/
def P18015354889298885090.Spec : Prop :=
  ∀ n, P18015354889298885090.a n = A315695 n

theorem P18015354889298885090.correct : P18015354889298885090.Spec := by
  intro n
  simp only [A315695, Nat.add_sub_cancel, A315695.P18015354889298885090.f1, A315695.P18015354889298885090.a, A315695.P671725202491789356.a, A011864, A011864.P3547417513882699266.a, A311889, A311889.P1219721333135851208.a, A313722, A313722.P17589787555355658090.f1, A313722.P17589787555355658090.a, A315743, A315743.P14010390675010090140.f1, A315743.P14010390675010090140.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A008706, A008706.P2829034798076193717.a, A011875, A011875.P9145820491585483445.a, A312507, A312507.P15411761902841347457.a, A008458, A008458.P10936398443463225625.a, A313876, A313876.P7091103484459184855.a, A008592, A008592.P4981059802862696142.a, A313560, A313560.P11035165185372614413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315695

/-! ## A315695.P753479003911632162

`A005843(A313722(n))-A311889(n)`
-/

namespace A315695.P753479003911632162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313722 n).toNat - A311889 n

end

end A315695.P753479003911632162

namespace A315695

/-- `A005843(A313722(n))-A311889(n)` -/
def P753479003911632162.Spec : Prop :=
  ∀ n, P753479003911632162.a n = A315695 n

end A315695

/-! ## A315695.P4410589186917838887

`A005843(A008706(n))-A311994(n)`
-/

namespace A315695.P4410589186917838887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311994 n

end

end A315695.P4410589186917838887

namespace A315695

/-- `A005843(A008706(n))-A311994(n)` -/
def P4410589186917838887.Spec : Prop :=
  ∀ n, P4410589186917838887.a n = A315695 n

end A315695

/-! ## A315695.P12953803887563467582

`A004525(A315667(n)+A008458(n))`
-/

namespace A315695.P12953803887563467582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315667 n + A008458 n).toNat

end

end A315695.P12953803887563467582

namespace A315695

/-- `A004525(A315667(n)+A008458(n))` -/
def P12953803887563467582.Spec : Prop :=
  ∀ n, P12953803887563467582.a n = A315695 n

end A315695

/-! ## A315695.P2033766266840879294

`A004525(A315667(n)+A008588(n))`
-/

namespace A315695.P2033766266840879294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315667 n + A008588 n).toNat

end

end A315695.P2033766266840879294

namespace A315695

/-- `A004525(A315667(n)+A008588(n))` -/
def P2033766266840879294.Spec : Prop :=
  ∀ n, P2033766266840879294.a n = A315695 n

end A315695

/-! ## A315695.P300578091388544751

`A068962(3*A313534(n))`
-/

namespace A315695.P300578091388544751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (3 * A313534 n).toNat

end

end A315695.P300578091388544751

namespace A315695

/-- `A068962(3*A313534(n))` -/
def P300578091388544751.Spec : Prop :=
  ∀ n, P300578091388544751.a n = A315695 n

end A315695

/-! ## A315695.P3463161420463386124

`2*A008574(n)-A004525(A312209(n))`
-/

namespace A315695.P3463161420463386124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A312209 n).toNat

end

end A315695.P3463161420463386124

namespace A315695

/-- `2*A008574(n)-A004525(A312209(n))` -/
def P3463161420463386124.Spec : Prop :=
  ∀ n, P3463161420463386124.a n = A315695 n

end A315695

/-!
# A315696: Coordination sequence Gal.5.301.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315696, there is no canonical definition to state claims against.
-/

/-! ## A315696.P1931064792805950027

`A314021(n)+A004396(n)`
-/

namespace A315696.P1931064792805950027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n + A004396 n

end

end A315696.P1931064792805950027

/-! ## A315696.P4548876605957975741

`A314021(n)+A004525(A004773(n))`
-/

namespace A315696.P4548876605957975741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n + A004525 (A004773 n).toNat

end

end A315696.P4548876605957975741

/-! ## A315696.P10860076327364688276

`A314021(n)+A002264(2*n+1)`
-/

namespace A315696.P10860076327364688276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314021 n + A002264 (2 * n + 1)

end

end A315696.P10860076327364688276

/-! ## A315696.P4759972195559649809

`abs(A008592(n)-A311993(n))`
-/

namespace A315696.P4759972195559649809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311993 n|

end

end A315696.P4759972195559649809

/-! ## A315696.P17993579513299760688

`A008458(n)+A008574(n)-A311993(n)`
-/

namespace A315696.P17993579513299760688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311993 n)

end

end A315696.P17993579513299760688

/-! ## A315696.P17266835933915782545

`A004396(n)+A310369(n)+A004396(A004396(n))`
-/

namespace A315696.P17266835933915782545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310369 n + A004396 (A004396 n).toNat)

end

end A315696.P17266835933915782545

/-! ## A315696.P8670594114059106802

`A313477(n)+A004396(A004396(n)+n)`
-/

namespace A315696.P8670594114059106802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A315696.P8670594114059106802

/-! ## A315696.P9514642253727601916

`A315646(n)+Δ[A011862(n)]`
-/

namespace A315696.P9514642253727601916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n + (f1 (n + 1) - f1 n)

end

end A315696.P9514642253727601916

/-! ## A315696.P8573040313327167117

`A004396(n)+A315646(n)-A004396(A004396(n))`
-/

namespace A315696.P8573040313327167117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315646 n - A004396 (A004396 n).toNat)

end

end A315696.P8573040313327167117

/-! ## A315696.P14173691305984202765

`A315495(n)-A102283(A004396(4*n))`
-/

namespace A315696.P14173691305984202765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A102283 (A004396 (4 * n)).toNat

end

end A315696.P14173691305984202765

/-! ## A315696.P3968385772029440539

`A315495(n)+A102283(n-A004396(n))`
-/

namespace A315696.P3968385772029440539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + A102283 ((n : ℤ) - A004396 n).toNat

end

end A315696.P3968385772029440539

/-! ## A315696.P5081216642770754163

`A315495(n)-A102283(A004396(n)-A102283(n))`
-/

namespace A315696.P5081216642770754163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A102283 (A004396 n - A102283 n).toNat

end

end A315696.P5081216642770754163

/-! ## A315696.P10559365594786367952

`A315757(n)-Δ[A011862(n)]`
-/

namespace A315696.P10559365594786367952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - (f1 (n + 1) - f1 n)

end

end A315696.P10559365594786367952

/-! ## A315696.P1206332563691257195

`A004396(A004396(n))+A315757(n)-A004396(n)`
-/

namespace A315696.P1206332563691257195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315757 n - A004396 n)

end

end A315696.P1206332563691257195

/-! ## A315696.P18044837242416502995

`A067251(A016861(n))-A113217(2*n)`
-/

namespace A315696.P18044837242416502995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A016861 n).toNat - A113217 (2 * n)

end

end A315696.P18044837242416502995

/-! ## A315696.P3730006954365562746

`A005843(n)+A004396(A315646(n))`
-/

namespace A315696.P3730006954365562746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315646 n).toNat

end

end A315696.P3730006954365562746

/-! ## A315696.P13010083731521735485

`A004396(A315680(n))+2*n`
-/

namespace A315696.P13010083731521735485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315680 n).toNat + (2 * n : ℤ)

end

end A315696.P13010083731521735485

/-! ## A315696.P659519746537267053

`A004396(2*A313538(n)-n)`
-/

namespace A315696.P659519746537267053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313538 n - (n : ℤ)).toNat

end

end A315696.P659519746537267053

/-! ## A315696.P1249521091393880928

`A004396(A004277(n)+A315646(n)+n)`
-/

namespace A315696.P1249521091393880928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004277 n + (A315646 n + (n : ℤ))).toNat

end

end A315696.P1249521091393880928

/-! ## A315696.P12086085069891633302

`A004396(A313538(n)+A313538(n)-n)`
-/

namespace A315696.P12086085069891633302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 n + (A313538 n - (n : ℤ))).toNat

end

end A315696.P12086085069891633302

/-!
# A315697: Coordination sequence Gal.6.621.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315697, the canonical program `A315697.P15638358996916271384` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315697 has offset 0).

The definition of A315697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315697.P15638358996916271384

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=12, a(3)=17, a(4)=23, a(5)=28, a(6)=33, a(7)=38, a(8)=43`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A315697

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P15638358996916271384.Spec : Prop :=
  ∀ n, P15638358996916271384.a n = A315697 n

theorem P15638358996916271384.correct : P15638358996916271384.Spec := by
  intro n
  simp only [A315697]

end A315697

/-! ## A315697.P7291014710651923046

`A004525(n)+A315683(n)-A004396(A004525(n))`
-/

namespace A315697.P7291014710651923046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315683 n - A004396 (A004525 n).toNat)

end

end A315697.P7291014710651923046

namespace A315697

/-- `A004525(n)+A315683(n)-A004396(A004525(n))` -/
def P7291014710651923046.Spec : Prop :=
  ∀ n, P7291014710651923046.a n = A315697 n

theorem P7291014710651923046.correct : P7291014710651923046.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P7291014710651923046.a, A315697.P15638358996916271384.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A315683, A315683.P6946226476358261575.a, A313474, A313474.P13131872544688635231.a, A313533, A313533.P10490888896929360716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P17303730479787805126

`A313533(n)+n`
-/

namespace A315697.P17303730479787805126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + (n : ℤ)

end

end A315697.P17303730479787805126

namespace A315697

/-- `A313533(n)+n` -/
def P17303730479787805126.Spec : Prop :=
  ∀ n, P17303730479787805126.a n = A315697 n

theorem P17303730479787805126.correct : P17303730479787805126.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P17303730479787805126.a, A315697.P15638358996916271384.a, A313533, A313533.P10490888896929360716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P12760736852061422896

`A005843(n)-(n-A313533(n))`
-/

namespace A315697.P12760736852061422896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313533 n)

end

end A315697.P12760736852061422896

namespace A315697

/-- `A005843(n)-(n-A313533(n))` -/
def P12760736852061422896.Spec : Prop :=
  ∀ n, P12760736852061422896.a n = A315697 n

theorem P12760736852061422896.correct : P12760736852061422896.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P12760736852061422896.a, A315697.P15638358996916271384.a, A005843, A005843.P3167286115683555970.a, A313533, A313533.P10490888896929360716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P348439009359486867

`A000027(2*n-(n-A313533(n)))`
-/

namespace A315697.P348439009359486867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) - ((n : ℤ) - A313533 n)).toNat

end

end A315697.P348439009359486867

namespace A315697

/-- `A000027(2*n-(n-A313533(n)))` -/
def P348439009359486867.Spec : Prop :=
  ∀ n, P348439009359486867.a n = A315697 n

end A315697

/-! ## A315697.P13613947489410263384

`abs(A008592(n)-A311964(n))`
-/

namespace A315697.P13613947489410263384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311964 n|

end

end A315697.P13613947489410263384

namespace A315697

/-- `abs(A008592(n)-A311964(n))` -/
def P13613947489410263384.Spec : Prop :=
  ∀ n, P13613947489410263384.a n = A315697 n

end A315697

/-! ## A315697.P1608633356231402741

`A008458(n)+A008574(n)-A311964(n)`
-/

namespace A315697.P1608633356231402741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311964 n)

end

end A315697.P1608633356231402741

namespace A315697

/-- `A008458(n)+A008574(n)-A311964(n)` -/
def P1608633356231402741.Spec : Prop :=
  ∀ n, P1608633356231402741.a n = A315697 n

end A315697

/-! ## A315697.P3309332128737042332

`gcd(A008592(n)-A311964(n), A008683(20*n+48))`
-/

namespace A315697.P3309332128737042332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A311964 n) (A008683 (20 * n + 48))

end

end A315697.P3309332128737042332

namespace A315697

/-- `gcd(A008592(n)-A311964(n), A008683(20*n+48))` -/
def P3309332128737042332.Spec : Prop :=
  ∀ n, (P3309332128737042332.a n : ℤ) = A315697 n

end A315697

/-! ## A315697.P13379487990540102138

`A314024(n)+A004396(n)`
-/

namespace A315697.P13379487990540102138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314024 n + A004396 n

end

end A315697.P13379487990540102138

namespace A315697

/-- `A314024(n)+A004396(n)` -/
def P13379487990540102138.Spec : Prop :=
  ∀ n, P13379487990540102138.a n = A315697 n

theorem P13379487990540102138.correct : P13379487990540102138.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P13379487990540102138.a, A315697.P15638358996916271384.a, A004396, A004396.P17032557045289780609.a, A314024, A314024.P187168839629835134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P35738806459332093

`A314024(n)+A002264(2*n+1)`
-/

namespace A315697.P35738806459332093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314024 n + A002264 (2 * n + 1)

end

end A315697.P35738806459332093

namespace A315697

/-- `A314024(n)+A002264(2*n+1)` -/
def P35738806459332093.Spec : Prop :=
  ∀ n, P35738806459332093.a n = A315697 n

theorem P35738806459332093.correct : P35738806459332093.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P35738806459332093.a, A315697.P15638358996916271384.a, A002264, A002264.P5647656940077635922.a, A314024, A314024.P187168839629835134.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P8600997454776766182

`A314024(n)-A002264(n+1)+n`
-/

namespace A315697.P8600997454776766182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314024 n - A002264 (n + 1) + (n : ℤ)

end

end A315697.P8600997454776766182

namespace A315697

/-- `A314024(n)-A002264(n+1)+n` -/
def P8600997454776766182.Spec : Prop :=
  ∀ n, P8600997454776766182.a n = A315697 n

end A315697

/-! ## A315697.P7448873984866488965

`A314089(n)+A004396(2*A004525(n))`
-/

namespace A315697.P7448873984866488965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A004396 (2 * A004525 n).toNat

end

end A315697.P7448873984866488965

namespace A315697

/-- `A314089(n)+A004396(2*A004525(n))` -/
def P7448873984866488965.Spec : Prop :=
  ∀ n, P7448873984866488965.a n = A315697 n

end A315697

/-! ## A315697.P2216200669300342954

`A315482(n)+A002264(n+1)`
-/

namespace A315697.P2216200669300342954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315482 n + A002264 (n + 1)

end

end A315697.P2216200669300342954

namespace A315697

/-- `A315482(n)+A002264(n+1)` -/
def P2216200669300342954.Spec : Prop :=
  ∀ n, P2216200669300342954.a n = A315697 n

end A315697

/-! ## A315697.P16235528893208151781

`A315482(n)+n-A004396(n)`
-/

namespace A315697.P16235528893208151781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315482 n + ((n : ℤ) - A004396 n)

end

end A315697.P16235528893208151781

namespace A315697

/-- `A315482(n)+n-A004396(n)` -/
def P16235528893208151781.Spec : Prop :=
  ∀ n, P16235528893208151781.a n = A315697 n

theorem P16235528893208151781.correct : P16235528893208151781.Spec := by
  intro n
  simp only [A315697, Nat.add_sub_cancel, A315697.P16235528893208151781.a, A315697.P15638358996916271384.a, A004396, A004396.P17032557045289780609.a, A315482, A315482.P9070662695746242756.a, A313533, A313533.P10490888896929360716.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315697

/-! ## A315697.P9711286492068595548

`A008486(n)+A315482(n)-A008576(n)`
-/

namespace A315697.P9711286492068595548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315482 n - A008576 n)

end

end A315697.P9711286492068595548

namespace A315697

/-- `A008486(n)+A315482(n)-A008576(n)` -/
def P9711286492068595548.Spec : Prop :=
  ∀ n, P9711286492068595548.a n = A315697 n

end A315697

/-! ## A315697.P15325999514052129874

`A315488(n)+A004525(n-A004396(n))`
-/

namespace A315697.P15325999514052129874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315488 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315697.P15325999514052129874

namespace A315697

/-- `A315488(n)+A004525(n-A004396(n))` -/
def P15325999514052129874.Spec : Prop :=
  ∀ n, P15325999514052129874.a n = A315697 n

end A315697

/-! ## A315697.P3907115601953910222

`abs(11*n-A313900(n))`
-/

namespace A315697.P3907115601953910222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313900 n|

end

end A315697.P3907115601953910222

namespace A315697

/-- `abs(11*n-A313900(n))` -/
def P3907115601953910222.Spec : Prop :=
  ∀ n, P3907115601953910222.a n = A315697 n

end A315697

/-! ## A315697.P7485185923621129008

`abs(A008592(n)+n-A313900(n))`
-/

namespace A315697.P7485185923621129008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A313900 n)|

end

end A315697.P7485185923621129008

namespace A315697

/-- `abs(A008592(n)+n-A313900(n))` -/
def P7485185923621129008.Spec : Prop :=
  ∀ n, P7485185923621129008.a n = A315697 n

end A315697

/-! ## A315697.P3562200326852338889

`A315747(n)-Δ[A011865(n)]`
-/

namespace A315697.P3562200326852338889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - (f1 (n + 1) - f1 n)

end

end A315697.P3562200326852338889

namespace A315697

/-- `A315747(n)-Δ[A011865(n)]` -/
def P3562200326852338889.Spec : Prop :=
  ∀ n, P3562200326852338889.a n = A315697 n

end A315697

/-!
# A315698: Coordination sequence Gal.5.302.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315698, the canonical program `A315698.P7256137343753335272` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315698 has offset 0).

The definition of A315698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315698.P5958409117133155384

`A313537(n)+n`
-/

namespace A315698.P5958409117133155384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n + (n : ℤ)

end

end A315698.P5958409117133155384

namespace A315698

/-- `A313537(n)+n` -/
def P5958409117133155384.Spec : Prop :=
  ∀ n, P5958409117133155384.a n = A315698 n

end A315698

/-! ## A315698.P11104719079137251297

`abs(11*n-A313898(n))`
-/

namespace A315698.P11104719079137251297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A313898 n|

end

end A315698.P11104719079137251297

namespace A315698

/-- `abs(11*n-A313898(n))` -/
def P11104719079137251297.Spec : Prop :=
  ∀ n, P11104719079137251297.a n = A315698 n

end A315698

/-! ## A315698.P7256137343753335272

`A047513(A312892(n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315698

/-- `A047513(A312892(n)+1)` -/
def P7256137343753335272.Spec : Prop :=
  ∀ n, P7256137343753335272.a n = A315698 n

theorem P7256137343753335272.correct : P7256137343753335272.Spec := by
  intro n
  simp only [A315698]

end A315698

/-! ## A315698.P11873544059182542572

`abs(A008592(n)-A311958(n))`
-/

namespace A315698.P11873544059182542572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A311958 n|

end

end A315698.P11873544059182542572

namespace A315698

/-- `abs(A008592(n)-A311958(n))` -/
def P11873544059182542572.Spec : Prop :=
  ∀ n, P11873544059182542572.a n = A315698 n

end A315698

/-! ## A315698.P8785579149859593512

`A315468(n)+Δ[A011858(n)]`
-/

namespace A315698.P8785579149859593512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + (f1 (n + 1) - f1 n)

end

end A315698.P8785579149859593512

namespace A315698

/-- `A315468(n)+Δ[A011858(n)]` -/
def P8785579149859593512.Spec : Prop :=
  ∀ n, P8785579149859593512.a n = A315698 n

end A315698

/-! ## A315698.P3173872659367689570

`A314670(n)+A047299(n+1)`
-/

namespace A315698.P3173872659367689570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A047299 (n + 1)

end

end A315698.P3173872659367689570

namespace A315698

/-- `A314670(n)+A047299(n+1)` -/
def P3173872659367689570.Spec : Prop :=
  ∀ n, P3173872659367689570.a n = A315698 n

end A315698

/-! ## A315698.P8375319334527800120

`A315468(n)+A057354(n+1)`
-/

namespace A315698.P8375319334527800120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n + A057354 (n + 1)

end

end A315698.P8375319334527800120

namespace A315698

/-- `A315468(n)+A057354(n+1)` -/
def P8375319334527800120.Spec : Prop :=
  ∀ n, P8375319334527800120.a n = A315698 n

end A315698

/-! ## A315698.P17795082717539628413

`(A315644(n)+A008458(n))/2`
-/

namespace A315698.P17795082717539628413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315644 n + A008458 n : ℚ) / 2

end

end A315698.P17795082717539628413

namespace A315698

/-- `(A315644(n)+A008458(n))/2` -/
def P17795082717539628413.Spec : Prop :=
  ∀ n, P17795082717539628413.a n = (A315698 n : ℚ)

end A315698

/-! ## A315698.P9087588461941064815

`A312948(n)+A330025(n)+n`
-/

namespace A315698.P9087588461941064815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + (A330025 n + (n : ℤ))

end

end A315698.P9087588461941064815

namespace A315698

/-- `A312948(n)+A330025(n)+n` -/
def P9087588461941064815.Spec : Prop :=
  ∀ n, P9087588461941064815.a n = A315698 n

end A315698

/-! ## A315698.P8686113481759169092

`A315707(n)+n-A151988(n)`
-/

namespace A315698.P8686113481759169092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n + ((n : ℤ) - A151988 n)

end

end A315698.P8686113481759169092

namespace A315698

/-- `A315707(n)+n-A151988(n)` -/
def P8686113481759169092.Spec : Prop :=
  ∀ n, P8686113481759169092.a n = A315698 n

end A315698

/-! ## A315698.P14335650847849109980

`A005843(n)-(n-A313537(n))`
-/

namespace A315698.P14335650847849109980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A313537 n)

end

end A315698.P14335650847849109980

namespace A315698

/-- `A005843(n)-(n-A313537(n))` -/
def P14335650847849109980.Spec : Prop :=
  ∀ n, P14335650847849109980.a n = A315698 n

end A315698

/-! ## A315698.P8844310468210431647

`A008458(n)+A008574(n)-A311958(n)`
-/

namespace A315698.P8844310468210431647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311958 n)

end

end A315698.P8844310468210431647

namespace A315698

/-- `A008458(n)+A008574(n)-A311958(n)` -/
def P8844310468210431647.Spec : Prop :=
  ∀ n, P8844310468210431647.a n = A315698 n

end A315698

/-! ## A315698.P11649348262208295756

`A313719(n)+n-A008676(A016777(n))`
-/

namespace A315698.P11649348262208295756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + ((n : ℤ) - A008676 (A016777 n).toNat)

end

end A315698.P11649348262208295756

namespace A315698

/-- `A313719(n)+n-A008676(A016777(n))` -/
def P11649348262208295756.Spec : Prop :=
  ∀ n, P11649348262208295756.a n = A315698 n

end A315698

/-! ## A315698.P11144638960816351222

`A008458(n)+A314827(n)-A250120(n)`
-/

namespace A315698.P11144638960816351222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A314827 n - A250120 n)

end

end A315698.P11144638960816351222

namespace A315698

/-- `A008458(n)+A314827(n)-A250120(n)` -/
def P11144638960816351222.Spec : Prop :=
  ∀ n, P11144638960816351222.a n = A315698 n

end A315698

/-! ## A315698.P8988909534757029446

`∑{d}[A008592(n)-A311958(n), A000010(#)]`
-/

namespace A315698.P8988909534757029446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A311958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315698.P8988909534757029446

namespace A315698

/-- `∑{d}[A008592(n)-A311958(n), A000010(#)]` -/
def P8988909534757029446.Spec : Prop :=
  ∀ n, P8988909534757029446.a n = A315698 n

end A315698

/-! ## A315698.P3750072316383845965

`A005843(n)+A005843(A008574(n))-A311958(n)`
-/

namespace A315698.P3750072316383845965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311958 n)

end

end A315698.P3750072316383845965

namespace A315698

/-- `A005843(n)+A005843(A008574(n))-A311958(n)` -/
def P3750072316383845965.Spec : Prop :=
  ∀ n, P3750072316383845965.a n = A315698 n

end A315698

/-! ## A315698.P3838853676247736410

`A315761(n)-A002266(n+2)`
-/

namespace A315698.P3838853676247736410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A002266 (n + 2)

end

end A315698.P3838853676247736410

namespace A315698

/-- `A315761(n)-A002266(n+2)` -/
def P3838853676247736410.Spec : Prop :=
  ∀ n, P3838853676247736410.a n = A315698 n

end A315698

/-! ## A315698.P1561139395384298842

`A315761(n)-A047263(n+1)+n`
-/

namespace A315698.P1561139395384298842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047263 (n + 1) + (n : ℤ)

end

end A315698.P1561139395384298842

namespace A315698

/-- `A315761(n)-A047263(n+1)+n` -/
def P1561139395384298842.Spec : Prop :=
  ∀ n, P1561139395384298842.a n = A315698 n

end A315698

/-! ## A315698.P1919713591105307852

`A005843(A008574(n)+n)-A311958(n)`
-/

namespace A315698.P1919713591105307852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311958 n

end

end A315698.P1919713591105307852

namespace A315698

/-- `A005843(A008574(n)+n)-A311958(n)` -/
def P1919713591105307852.Spec : Prop :=
  ∀ n, P1919713591105307852.a n = A315698 n

end A315698

/-! ## A315698.P10906876459285546001

`A330025(n)+A314164(n)`
-/

namespace A315698.P10906876459285546001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A314164 n

end

end A315698.P10906876459285546001

namespace A315698

/-- `A330025(n)+A314164(n)` -/
def P10906876459285546001.Spec : Prop :=
  ∀ n, P10906876459285546001.a n = A315698 n

end A315698

/-!
# A315699: Coordination sequence Gal.6.637.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315699, the canonical program `A315699.P14836870599283909949` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315699 has offset 0).

The definition of A315699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315699.P14836870599283909949

`abs(10*n-A311932(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315699

/-- `abs(10*n-A311932(n))` -/
def P14836870599283909949.Spec : Prop :=
  ∀ n, P14836870599283909949.a n = A315699 n

theorem P14836870599283909949.correct : P14836870599283909949.Spec := by
  intro n
  simp only [A315699]

end A315699

/-! ## A315699.P6934408935579817523

`2*A008706(n)-A311932(n)`
-/

namespace A315699.P6934408935579817523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A311932 n

end

end A315699.P6934408935579817523

namespace A315699

/-- `2*A008706(n)-A311932(n)` -/
def P6934408935579817523.Spec : Prop :=
  ∀ n, P6934408935579817523.a n = A315699 n

end A315699

/-! ## A315699.P11661447896834235505

`(A315645(n)+A008458(n))/2`
-/

namespace A315699.P11661447896834235505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315645 n + A008458 n : ℚ) / 2

end

end A315699.P11661447896834235505

namespace A315699

/-- `(A315645(n)+A008458(n))/2` -/
def P11661447896834235505.Spec : Prop :=
  ∀ n, P11661447896834235505.a n = (A315699 n : ℚ)

end A315699

/-! ## A315699.P3373894500219861472

`2*A315470(n)-A315245(n)`
-/

namespace A315699.P3373894500219861472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315470 n - A315245 n

end

end A315699.P3373894500219861472

namespace A315699

/-- `2*A315470(n)-A315245(n)` -/
def P3373894500219861472.Spec : Prop :=
  ∀ n, P3373894500219861472.a n = A315699 n

end A315699

/-! ## A315699.P9910657955751890034

`A008458(n)+A008574(n)-A311932(n)`
-/

namespace A315699.P9910657955751890034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A311932 n)

end

end A315699.P9910657955751890034

namespace A315699

/-- `A008458(n)+A008574(n)-A311932(n)` -/
def P9910657955751890034.Spec : Prop :=
  ∀ n, P9910657955751890034.a n = A315699 n

end A315699

/-! ## A315699.P7189198938176101855

`A005843(n)+A005843(A008574(n))-A311932(n)`
-/

namespace A315699.P7189198938176101855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A311932 n)

end

end A315699.P7189198938176101855

namespace A315699

/-- `A005843(n)+A005843(A008574(n))-A311932(n)` -/
def P7189198938176101855.Spec : Prop :=
  ∀ n, P7189198938176101855.a n = A315699 n

end A315699

/-! ## A315699.P5300867951215897977

`A315645(n)+A001281(A008458(n)-A315645(n))`
-/

namespace A315699.P5300867951215897977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315645 n + A001281 (A008458 n - A315645 n).toNat

end

end A315699.P5300867951215897977

namespace A315699

/-- `A315645(n)+A001281(A008458(n)-A315645(n))` -/
def P5300867951215897977.Spec : Prop :=
  ∀ n, P5300867951215897977.a n = A315699 n

end A315699

/-! ## A315699.P6427283515849906676

`A315750(n)-Δ[A011864(n)]`
-/

namespace A315699.P6427283515849906676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315750 n - (f1 (n + 1) - f1 n)

end

end A315699.P6427283515849906676

namespace A315699

/-- `A315750(n)-Δ[A011864(n)]` -/
def P6427283515849906676.Spec : Prop :=
  ∀ n, P6427283515849906676.a n = A315699 n

end A315699

/-! ## A315699.P7928207767239994689

`A005843(A008706(n))-A311932(n)`
-/

namespace A315699.P7928207767239994689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A311932 n

end

end A315699.P7928207767239994689

namespace A315699

/-- `A005843(A008706(n))-A311932(n)` -/
def P7928207767239994689.Spec : Prop :=
  ∀ n, P7928207767239994689.a n = A315699 n

end A315699

/-! ## A315699.P2519781487351182819

`A005843(A008574(n)+n)-A311932(n)`
-/

namespace A315699.P2519781487351182819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A311932 n

end

end A315699.P2519781487351182819

namespace A315699

/-- `A005843(A008574(n)+n)-A311932(n)` -/
def P2519781487351182819.Spec : Prop :=
  ∀ n, P2519781487351182819.a n = A315699 n

end A315699

/-! ## A315699.P7878546499774004421

`2*n+A004396(A315686(n))`
-/

namespace A315699.P7878546499774004421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315686 n).toNat

end

end A315699.P7878546499774004421

namespace A315699

/-- `2*n+A004396(A315686(n))` -/
def P7878546499774004421.Spec : Prop :=
  ∀ n, P7878546499774004421.a n = A315699 n

end A315699

/-! ## A315699.P3265821877120870793

`A004396(A315695(n))+2*n`
-/

namespace A315699.P3265821877120870793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315695 n).toNat + (2 * n : ℤ)

end

end A315699.P3265821877120870793

namespace A315699

/-- `A004396(A315695(n))+2*n` -/
def P3265821877120870793.Spec : Prop :=
  ∀ n, P3265821877120870793.a n = A315699 n

end A315699

/-! ## A315699.P12710319979516895433

`A005843(n)+A004396(A315695(n))`
-/

namespace A315699.P12710319979516895433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315695 n).toNat

end

end A315699.P12710319979516895433

namespace A315699

/-- `A005843(n)+A004396(A315695(n))` -/
def P12710319979516895433.Spec : Prop :=
  ∀ n, P12710319979516895433.a n = A315699 n

end A315699

/-! ## A315699.P11493591901564007004

`A008585(n)-(n-A004396(A315686(n)))`
-/

namespace A315699.P11493591901564007004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315686 n).toNat)

end

end A315699.P11493591901564007004

namespace A315699

/-- `A008585(n)-(n-A004396(A315686(n)))` -/
def P11493591901564007004.Spec : Prop :=
  ∀ n, P11493591901564007004.a n = A315699 n

end A315699

/-! ## A315699.P1893662553393681203

`A004396(A315686(n)+A008486(n))`
-/

namespace A315699.P1893662553393681203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n + A008486 n).toNat

end

end A315699.P1893662553393681203

namespace A315699

/-- `A004396(A315686(n)+A008486(n))` -/
def P1893662553393681203.Spec : Prop :=
  ∀ n, P1893662553393681203.a n = A315699 n

end A315699

/-! ## A315699.P5261056505977866797

`A004396(A315695(n)+A008486(n))`
-/

namespace A315699.P5261056505977866797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315695 n + A008486 n).toNat

end

end A315699.P5261056505977866797

namespace A315699

/-- `A004396(A315695(n)+A008486(n))` -/
def P5261056505977866797.Spec : Prop :=
  ∀ n, P5261056505977866797.a n = A315699 n

end A315699

/-! ## A315699.P2426544113363587494

`A004396(A315686(n)+A008585(n))`
-/

namespace A315699.P2426544113363587494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 n + A008585 n).toNat

end

end A315699.P2426544113363587494

namespace A315699

/-- `A004396(A315686(n)+A008585(n))` -/
def P2426544113363587494.Spec : Prop :=
  ∀ n, P2426544113363587494.a n = A315699 n

end A315699

/-! ## A315699.P16453022951810987816

`A001281(A315645(n)+A008458(n))`
-/

namespace A315699.P16453022951810987816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315645 n + A008458 n).toNat

end

end A315699.P16453022951810987816

namespace A315699

/-- `A001281(A315645(n)+A008458(n))` -/
def P16453022951810987816.Spec : Prop :=
  ∀ n, P16453022951810987816.a n = A315699 n

end A315699

