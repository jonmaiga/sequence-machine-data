import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A080000: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1,1,2}.

The programs for A080000, the canonical program `A080000.P18023823250209715559` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080000 has offset 0).

The definition of A080000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080000.P18023823250209715559

`a(n-1)+2*a(n-5)-a(n-6)+a(n-7)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3, a(7)=5, a(8)=7, a(9)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080000

/-- `a(n-1)+2*a(n-5)-a(n-6)+a(n-7)-a(n-10)` -/
def P18023823250209715559.Spec : Prop :=
  ∀ n, P18023823250209715559.a n = A080000 n

theorem P18023823250209715559.correct : P18023823250209715559.Spec := by
  intro n
  simp only [A080000]

end A080000

/-!
# A080001: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1,0,2}.

The programs for A080001, the canonical program `A080001.P15140016223186763828` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080001 has offset 0).

The definition of A080001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080001.P15140016223186763828

`a(n-3)+a(n-4)+2*a(n-5)-a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=2, a(8)=4, a(9)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080001

/-- `a(n-3)+a(n-4)+2*a(n-5)-a(n-9)-a(n-10)` -/
def P15140016223186763828.Spec : Prop :=
  ∀ n, P15140016223186763828.a n = A080001 n

theorem P15140016223186763828.correct : P15140016223186763828.Spec := by
  intro n
  simp only [A080001]

end A080001

/-!
# A080002: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1,0,1}.

The programs for A080002, the canonical program `A080002.P18107956309046411093` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080002 has offset 0).

The definition of A080002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080002.P18107956309046411093

`a(n-2)+a(n-4)+2*a(n-5)-a(n-6)-a(n-7)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=0, a(7)=0, a(8)=1, a(9)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080002

/-- `a(n-2)+a(n-4)+2*a(n-5)-a(n-6)-a(n-7)-a(n-10)` -/
def P18107956309046411093.Spec : Prop :=
  ∀ n, P18107956309046411093.a n = A080002 n

theorem P18107956309046411093.correct : P18107956309046411093.Spec := by
  intro n
  simp only [A080002]

end A080002

/-!
# A080003: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={1,2}.

The programs for A080003, there is no canonical definition to state claims against.
-/

/-! ## A080003.P3526778783146553534

`A372306(A376718(n))`
-/

namespace A080003.P3526778783146553534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (A376718 n).toNat

end

end A080003.P3526778783146553534

/-! ## A080003.P17336265740802069113

`A138530(lcm(6, A124302(n)))`
-/

namespace A080003.P17336265740802069113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (Int.lcm 6 (A124302 n))

end

end A080003.P17336265740802069113

/-! ## A080003.P10505341030091179982

`A084618(or(2, A005314(n)))`
-/

namespace A080003.P10505341030091179982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084618 (Int.lor 2 (A005314 n)).toNat

end

end A080003.P10505341030091179982

/-! ## A080003.P4315363614623626112

`A168258(A246006(n)+A007051(n))`
-/

namespace A080003.P4315363614623626112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168258 (A246006 n + A007051 n).toNat

end

end A080003.P4315363614623626112

/-! ## A080003.P12372176458161478307

`A070082(A001004(n+1))-A081326(n+1)`
-/

namespace A080003.P12372176458161478307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A001004 (n + 1)).toNat - A081326 (n + 1)

end

end A080003.P12372176458161478307

/-!
# A080004: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1,2}.

The programs for A080004, there is no canonical definition to state claims against.
-/

/-! ## A080004.P17342444447744793098

`A324078(Δ[Δ[A000571(n+1)]])`
-/

namespace A080004.P17342444447744793098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (f1 (n + 1) - f1 n).toNat

end

end A080004.P17342444447744793098

/-! ## A080004.P322902599434164036

`A000196(xor(A133494(n), A191797(n)))`
-/

namespace A080004.P322902599434164036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A133494 n) (A191797 n)).toNat

end

end A080004.P322902599434164036

/-! ## A080004.P2483433509624146895

`A277143(2*n+1)+A003056(A003080(n))`
-/

namespace A080004.P2483433509624146895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277143 (2 * n + 1) + A003056 (A003080 n).toNat

end

end A080004.P2483433509624146895

/-! ## A080004.P5984108630586373793

`A003059(A014137(n))-A344739(2*n+3)`
-/

namespace A080004.P5984108630586373793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A014137 n).toNat - A344739 (2 * n + 3)

end

end A080004.P5984108630586373793

/-! ## A080004.P9512799426035561770

`A348086(A338218(n+2))`
-/

namespace A080004.P9512799426035561770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348086 (A338218 (n + 2)).toNat

end

end A080004.P9512799426035561770

/-!
# A080005: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1,1}.

The programs for A080005, there is no canonical definition to state claims against.
-/

/-! ## A080005.P12587058617355971931

`A135304(A003242(n+1))`
-/

namespace A080005.P12587058617355971931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A003242 (n + 1)).toNat

end

end A080005.P12587058617355971931

/-! ## A080005.P16390977509357003901

`A320456(A274162(n))+A238591(n+1)`
-/

namespace A080005.P16390977509357003901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A274162 n).toNat + A238591 (n + 1)

end

end A080005.P16390977509357003901

/-! ## A080005.P1931706390239301878

`or(A003056(A024500(n+1)), A024503(n))`
-/

namespace A080005.P1931706390239301878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A024500 (n + 1)).toNat) (A024503 n)

end

end A080005.P1931706390239301878

/-! ## A080005.P13397743376886864985

`or(A003056(A268619(n+1)), A054923(n))`
-/

namespace A080005.P13397743376886864985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A268619 (n + 1)).toNat) (A054923 n)

end

end A080005.P13397743376886864985

/-! ## A080005.P8332352351813789790

`A083375(A148361(n))`
-/

namespace A080005.P8332352351813789790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A148361 n).toNat

end

end A080005.P8332352351813789790

/-!
# A080006: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={0,2}.

The programs for A080006, there is no canonical definition to state claims against.
-/

/-! ## A080006.P7349592054561506232

`A339418(n)+A248333(A000031(n))`
-/

namespace A080006.P7349592054561506232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 n + A248333 (A000031 n).toNat

end

end A080006.P7349592054561506232

/-! ## A080006.P9621392884624448550

`A121649(n)-A003982(A001868(n))`
-/

namespace A080006.P9621392884624448550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 n - A003982 (A001868 n).toNat

end

end A080006.P9621392884624448550

/-! ## A080006.P9547041593689055785

`A121649(n)-A090418(A028859(n))`
-/

namespace A080006.P9547041593689055785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 n - A090418 (A028859 n).toNat

end

end A080006.P9547041593689055785

/-! ## A080006.P6747249360301665541

`A120401(A118658(n))-A103221(n)`
-/

namespace A080006.P6747249360301665541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A118658 n).toNat - A103221 n

end

end A080006.P6747249360301665541

/-! ## A080006.P2826866272514681778

`A121649(n)-A236677(A001998(n))`
-/

namespace A080006.P2826866272514681778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121649 n - A236677 (A001998 n).toNat

end

end A080006.P2826866272514681778

/-!
# A080007: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={0,1}.

The programs for A080007, there is no canonical definition to state claims against.
-/

/-! ## A080007.P16431909450954310679

`A227413(A000975(n+1))%A005145(A128014(n))`
-/

namespace A080007.P16431909450954310679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227413 (A000975 (n + 1)).toNat) (A005145 (A128014 n).toNat)

end

end A080007.P16431909450954310679

/-!
# A080009: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={2}.

The programs for A080009, there is no canonical definition to state claims against.
-/

/-! ## A080009.P9834150353626390593

`A002478(n)-A003285(A000142(n))`
-/

namespace A080009.P9834150353626390593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A003285 (A000142 n).toNat

end

end A080009.P9834150353626390593

/-! ## A080009.P3628715695606677288

`A002478(n)-A003285(A154655(n))`
-/

namespace A080009.P3628715695606677288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 n - A003285 (A154655 n).toNat

end

end A080009.P3628715695606677288

/-! ## A080009.P13717751276722751956

`A132118(A176334(n*A135225(n)))`
-/

namespace A080009.P13717751276722751956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (A176334 ((n : ℤ) * A135225 n).toNat).toNat

end

end A080009.P13717751276722751956

/-! ## A080009.P2813207627398973802

`A351596(A356802(n+1)+A167606(n))`
-/

namespace A080009.P2813207627398973802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A356802 (n + 1) + A167606 n).toNat

end

end A080009.P2813207627398973802

/-!
# A080010: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={1}.

The programs for A080010, there is no canonical definition to state claims against.
-/

/-! ## A080010.P5161658418280701075

`A221917(A006211(n+1))+A002799(n)`
-/

namespace A080010.P5161658418280701075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221917 (A006211 (n + 1)).toNat + A002799 n

end

end A080010.P5161658418280701075

/-!
# A080011: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={-1}.

The programs for A080011, there is no canonical definition to state claims against.
-/

/-! ## A080011.P16670071590892143249

`A276581(A080005(n)*A292553(n))`
-/

namespace A080011.P16670071590892143249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A080005 n * A292553 n).toNat

end

end A080011.P16670071590892143249

/-! ## A080011.P13980597136873768244

`A003986(or(A033321(n), A181768(n)))`
-/

namespace A080011.P13980597136873768244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Int.lor (A033321 n) (A181768 n)).toNat

end

end A080011.P13980597136873768244

/-! ## A080011.P7791279111117530992

`or(A001222(A216494(n)), A079991(n))`
-/

namespace A080011.P7791279111117530992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A216494 n).toNat) (A079991 n)

end

end A080011.P7791279111117530992

/-! ## A080011.P16902991253318302929

`or(A000094(n+1), A003056(A198957(n)))`
-/

namespace A080011.P16902991253318302929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000094 (n + 1)) (A003056 (A198957 n).toNat)

end

end A080011.P16902991253318302929

/-! ## A080011.P2036957005645865304

`or(A098357(A100058(n)), A250111(n+1))`
-/

namespace A080011.P2036957005645865304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098357 (A100058 n).toNat) (A250111 (n + 1))

end

end A080011.P2036957005645865304

/-!
# A080012: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=3, I={0}.

The programs for A080012, there is no canonical definition to state claims against.
-/

/-! ## A080012.P15786595275679627106

`A345167(A317884(n+1))+A000700(2*n)`
-/

namespace A080012.P15786595275679627106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A317884 (n + 1)).toNat + A000700 (2 * n)

end

end A080012.P15786595275679627106

/-!
# A080013: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=2, I={0,1}.

The programs for A080013, the canonical program `A080013.P14681329481030823303` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080013 has offset 0).

The definition of A080013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080013.P14681329481030823303

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080013

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P14681329481030823303.Spec : Prop :=
  ∀ n, P14681329481030823303.a n = A080013 n

theorem P14681329481030823303.correct : P14681329481030823303.Spec := by
  intro n
  simp only [A080013]

end A080013

/-! ## A080013.P17564675228294552325

`A143438(n+4)-A143438(n+1)-A143438(n+2)`
-/

namespace A080013.P17564675228294552325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (n + 4) - A143438 (n + 1) - A143438 (n + 2)

end

end A080013.P17564675228294552325

namespace A080013

/-- `A143438(n+4)-A143438(n+1)-A143438(n+2)` -/
def P17564675228294552325.Spec : Prop :=
  ∀ n, P17564675228294552325.a n = A080013 n

end A080013

/-! ## A080013.P3263626873083638231

`Δ[Δ[A200661(n+5)]-A200661(n+2)]`
-/

namespace A080013.P3263626873083638231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200661 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A200661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080013.P3263626873083638231

namespace A080013

/-- `Δ[Δ[A200661(n+5)]-A200661(n+2)]` -/
def P3263626873083638231.Spec : Prop :=
  ∀ n, P3263626873083638231.a n = A080013 n

end A080013

/-! ## A080013.P18096822018136027144

`A264550(∑[n-2]+4)`
-/

namespace A080013.P18096822018136027144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A080013.P18096822018136027144

namespace A080013

/-- `A264550(∑[n-2]+4)` -/
def P18096822018136027144.Spec : Prop :=
  ∀ n, P18096822018136027144.a n = A080013 n

end A080013

/-! ## A080013.P4935677687621029467

`A264676(∑[n-2]+4)`
-/

namespace A080013.P4935677687621029467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264676 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A080013.P4935677687621029467

namespace A080013

/-- `A264676(∑[n-2]+4)` -/
def P4935677687621029467.Spec : Prop :=
  ∀ n, P4935677687621029467.a n = A080013 n

end A080013

/-!
# A080014: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=2, r=2, I={1}.

The programs for A080014, the canonical program `A080014.P14821569151887885535` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080014 has offset 0).

The definition of A080014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080014.P14821569151887885535

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080014

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-a(n-6)` -/
def P14821569151887885535.Spec : Prop :=
  ∀ n, P14821569151887885535.a n = A080014 n

theorem P14821569151887885535.correct : P14821569151887885535.Spec := by
  intro n
  simp only [A080014]

end A080014

/-! ## A080014.P324720528560127637

`A202304(A024175(n))-A269175(2*(n+1))`
-/

namespace A080014.P324720528560127637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A024175 n).toNat - A269175 (2 * (n + 1))

end

end A080014.P324720528560127637

namespace A080014

/-- `A202304(A024175(n))-A269175(2*(n+1))` -/
def P324720528560127637.Spec : Prop :=
  ∀ n, P324720528560127637.a n = A080014 n

end A080014

/-! ## A080014.P3595339163784940712

`A003984(A294818(n))`
-/

namespace A080014.P3595339163784940712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A294818 n).toNat

end

end A080014.P3595339163784940712

namespace A080014

/-- `A003984(A294818(n))` -/
def P3595339163784940712.Spec : Prop :=
  ∀ n, P3595339163784940712.a n = A080014 n

end A080014

/-! ## A080014.P2952121728464345183

`A182113(A351938(n))`
-/

namespace A080014.P2952121728464345183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182113 (A351938 n).toNat

end

end A080014.P2952121728464345183

namespace A080014

/-- `A182113(A351938(n))` -/
def P2952121728464345183.Spec : Prop :=
  ∀ n, P2952121728464345183.a n = A080014 n

end A080014

/-! ## A080014.P4013070662369508856

`A195099(A075111(n+1))`
-/

namespace A080014.P4013070662369508856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (A075111 (n + 1)).toNat

end

end A080014.P4013070662369508856

namespace A080014

/-- `A195099(A075111(n+1))` -/
def P4013070662369508856.Spec : Prop :=
  ∀ n, P4013070662369508856.a n = A080014 n

end A080014

/-!
# A080015: Expansion of theta_3(q) / theta_3(q^2) in powers of q.

The programs for A080015, there is no canonical definition to state claims against.
-/

/-! ## A080015.P14218656857614540100

`(-1)^n*A210030(n)`
-/

namespace A080015.P14218656857614540100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A210030 n

end

end A080015.P14218656857614540100

/-! ## A080015.P1838468173637447716

`A057077(n)*A080054(n)`
-/

namespace A080015.P1838468173637447716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A080054 n

end

end A080015.P1838468173637447716

/-! ## A080015.P5472032436847685488

`A087960(n)*A108494(n)`
-/

namespace A080015.P5472032436847685488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A108494 n

end

end A080015.P5472032436847685488

/-! ## A080015.P9271969885670149865

`A210030(n)/A033999(n)`
-/

namespace A080015.P9271969885670149865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 n : ℚ) / (A033999 n : ℚ)

end

end A080015.P9271969885670149865

/-! ## A080015.P1330963842064202026

`A020639(A001316(n))*A245432(n)`
-/

namespace A080015.P1330963842064202026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A245432 n

end

end A080015.P1330963842064202026

/-! ## A080015.P3712069245958159961

`A210030(n)/A057077(A057077(n)+n)`
-/

namespace A080015.P3712069245958159961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A080015.P3712069245958159961

/-! ## A080015.P9320537283729287335

`A080054(n)/A115671(n)*A245432(n)`
-/

namespace A080015.P9320537283729287335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 n : ℚ) / (A115671 n : ℚ) * (A245432 n : ℚ)

end

end A080015.P9320537283729287335

/-! ## A080015.P543671447645050117

`lcm(A057077(n), A108494(n))*A057077(n)`
-/

namespace A080015.P543671447645050117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057077 n) (A108494 n) : ℤ) * A057077 n

end

end A080015.P543671447645050117

/-! ## A080015.P16488551058620834150

`A057077(n+1)*A108494(n)`
-/

namespace A080015.P16488551058620834150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A108494 n

end

end A080015.P16488551058620834150

/-! ## A080015.P10092684912797496150

`A245432(n)+A214639(2*n)`
-/

namespace A080015.P10092684912797496150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 n + A214639 (2 * n)

end

end A080015.P10092684912797496150

/-! ## A080015.P5048611950456811592

`A245432(n)*A280560(2*n)`
-/

namespace A080015.P5048611950456811592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 n * A280560 (2 * n)

end

end A080015.P5048611950456811592

/-! ## A080015.P8278349108748526917

`A210030(n)/A057077(2*n)`
-/

namespace A080015.P8278349108748526917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A080015.P8278349108748526917

/-! ## A080015.P10793604145388981072

`A210030(n)/A087960(2*n)`
-/

namespace A080015.P10793604145388981072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A080015.P10793604145388981072

/-! ## A080015.P16297325091729988472

`A036453(2*n+1)*A245432(n)`
-/

namespace A080015.P16297325091729988472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A245432 n

end

end A080015.P16297325091729988472

/-!
# A080016: Numerators of the convergents to the continued fraction of Pi^2/6.

The programs for A080016, there is no canonical definition to state claims against.
-/

/-! ## A080016.P1590073181047779241

`A325353(A265947(n))+A111818(n)`
-/

namespace A080016.P1590073181047779241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325353 (A265947 n).toNat + A111818 n

end

end A080016.P1590073181047779241

/-!
# A080017: Denominators of the convergents to the continued fraction of Pi^2/6.

The programs for A080017, there is no canonical definition to state claims against.
-/

/-! ## A080017.P3805882576499471222

`A256502(A080016(n))`
-/

namespace A080017.P3805882576499471222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A080016 n).toNat

end

end A080017.P3805882576499471222

/-! ## A080017.P8647675205382069656

`A364828(A385484(n+1))-n`
-/

namespace A080017.P8647675205382069656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364828 (A385484 (n + 1)).toNat - (n : ℤ)

end

end A080017.P8647675205382069656

/-!
# A080019: Positive integers such that the smallest positive real solution to x^n + x = 2*Pi*a(n) forms a monotonically increasing sequence as n grows.

The programs for A080019, there is no canonical definition to state claims against.
-/

/-! ## A080019.P5742978247631823382

`A214672(4*a(n-1))` with `a(0)=1`
-/

namespace A080019.P5742978247631823382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214672 (4 * a (n - 1)).toNat

end

end A080019.P5742978247631823382

/-! ## A080019.P1097362600003805130

`A057354(A130497(14*a(n-1)))` with `a(0)=1`
-/

namespace A080019.P1097362600003805130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057354 (A130497 (14 * a (n - 1)).toNat).toNat

end

end A080019.P1097362600003805130

/-! ## A080019.P10005260525476929291

`A288156(A288156(14*a(n-1)))` with `a(0)=1`
-/

namespace A080019.P10005260525476929291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288156 (A288156 (14 * a (n - 1)).toNat).toNat

end

end A080019.P10005260525476929291

/-! ## A080019.P12293749741817814729

`A194513(A218983(n+1))`
-/

namespace A080019.P12293749741817814729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A218983 (n + 1)).toNat

end

end A080019.P12293749741817814729

/-!
# A080021: log(n) is closer to an integer than is log(m) for any m with 2<=m

The programs for A080021, there is no canonical definition to state claims against.
-/

/-! ## A080021.P1203709575507998165

`A079663(lt[A053300(n)², A332095(n+1)])`
-/

namespace A080021.P1203709575507998165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053300 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080021.P1203709575507998165

/-! ## A080021.P12394016714193011313

`filter[A079663(n+1), A374769(#)]`
-/

namespace A080021.P12394016714193011313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374769 (f1 j).toNat = 1) n)

end

end A080021.P12394016714193011313

/-! ## A080021.P4535586133166483939

`A004791(n+1)/A072345(A003422(n))`
-/

namespace A080021.P4535586133166483939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004791 (n + 1) : ℚ) / (A072345 (A003422 n).toNat : ℚ)

end

end A080021.P4535586133166483939

/-!
# A080022: Numbers n such that log_pi(n) is closer to an integer than is log_pi(m) for any m with 2<=m

The programs for A080022, there is no canonical definition to state claims against.
-/

/-! ## A080022.P6805695059570375828

`A135587(or(3, n)^n+1)`
-/

namespace A080022.P6805695059570375828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135587 (Nat.lor 3 n ^ n + 1)

end

end A080022.P6805695059570375828

/-!
# A080023: log_phi(n) is closer to an integer than is log_phi(m) for any m with 2<=m

The programs for A080023, the canonical program `A080023.P493398896989064028` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080023 has offset 1).

The definition of A080023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080023.P2188157322807612973

`round(ϕ^(n+1))`
-/

namespace A080023.P2188157322807612973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

end

end A080023.P2188157322807612973

namespace A080023

/-- `round(ϕ^(n+1))` -/
def P2188157322807612973.Spec : Prop :=
  ∀ n, P2188157322807612973.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P13278531371125080536

`record[round(ϕ^abs(1-n))]`
-/

namespace A080023.P13278531371125080536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (|1 - (n : ℤ)| : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080023.P13278531371125080536

namespace A080023

/-- `record[round(ϕ^abs(1-n))]` -/
def P13278531371125080536.Spec : Prop :=
  ∀ n, P13278531371125080536.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P12441408802420236561

`ogf((2+x-x^2)/(1-x-x^2))`
-/

namespace A080023.P12441408802420236561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1] [1, -1, -1] n

end

end A080023.P12441408802420236561

namespace A080023

/-- `ogf((2+x-x^2)/(1-x-x^2))` -/
def P12441408802420236561.Spec : Prop :=
  ∀ n, P12441408802420236561.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P8189461267426360141

`floor(cos(1)+ϕ^(n+1))`
-/

namespace A080023.P8189461267426360141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P8189461267426360141

namespace A080023

/-- `floor(cos(1)+ϕ^(n+1))` -/
def P8189461267426360141.Spec : Prop :=
  ∀ n, P8189461267426360141.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P14678510380779270252

`ceil(cos(2)+ϕ^(n+1))`
-/

namespace A080023.P14678510380779270252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + Real.goldenRatio ^ (n + 1)⌉

end

end A080023.P14678510380779270252

namespace A080023

/-- `ceil(cos(2)+ϕ^(n+1))` -/
def P14678510380779270252.Spec : Prop :=
  ∀ n, P14678510380779270252.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P17467195515065243804

`floor(ϕ^(n+1)-sin(4))`
-/

namespace A080023.P17467195515065243804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 1) - Real.sin (4 : ℝ)⌋

end

end A080023.P17467195515065243804

namespace A080023

/-- `floor(ϕ^(n+1)-sin(4))` -/
def P17467195515065243804.Spec : Prop :=
  ∀ n, P17467195515065243804.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P17392923181068245266

`ceil(sin(6)+ϕ^(n+1))`
-/

namespace A080023.P17392923181068245266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (6 : ℝ) + Real.goldenRatio ^ (n + 1)⌉

end

end A080023.P17392923181068245266

namespace A080023

/-- `ceil(sin(6)+ϕ^(n+1))` -/
def P17392923181068245266.Spec : Prop :=
  ∀ n, P17392923181068245266.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P16867258751456755384

`floor(sin(7)+ϕ^(n+1))`
-/

namespace A080023.P16867258751456755384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (7 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P16867258751456755384

namespace A080023

/-- `floor(sin(7)+ϕ^(n+1))` -/
def P16867258751456755384.Spec : Prop :=
  ∀ n, P16867258751456755384.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P13247416736412978839

`floor(tanh(1)+ϕ^(n+1))`
-/

namespace A080023.P13247416736412978839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P13247416736412978839

namespace A080023

/-- `floor(tanh(1)+ϕ^(n+1))` -/
def P13247416736412978839.Spec : Prop :=
  ∀ n, P13247416736412978839.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P1023308927089540471

`ceil(tan(6)+ϕ^(n+1))`
-/

namespace A080023.P1023308927089540471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (6 : ℝ) + Real.goldenRatio ^ (n + 1)⌉

end

end A080023.P1023308927089540471

namespace A080023

/-- `ceil(tan(6)+ϕ^(n+1))` -/
def P1023308927089540471.Spec : Prop :=
  ∀ n, P1023308927089540471.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P16514566710295900957

`floor(cot(1)+ϕ^(n+1))`
-/

namespace A080023.P16514566710295900957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P16514566710295900957

namespace A080023

/-- `floor(cot(1)+ϕ^(n+1))` -/
def P16514566710295900957.Spec : Prop :=
  ∀ n, P16514566710295900957.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P10442597676733820895

`ceil(cot(2)+ϕ^(n+1))`
-/

namespace A080023.P10442597676733820895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + Real.goldenRatio ^ (n + 1)⌉

end

end A080023.P10442597676733820895

namespace A080023

/-- `ceil(cot(2)+ϕ^(n+1))` -/
def P10442597676733820895.Spec : Prop :=
  ∀ n, P10442597676733820895.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P13451166881090417041

`floor(acot(2)+ϕ^(n+1))`
-/

namespace A080023.P13451166881090417041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P13451166881090417041

namespace A080023

/-- `floor(acot(2)+ϕ^(n+1))` -/
def P13451166881090417041.Spec : Prop :=
  ∀ n, P13451166881090417041.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P5768906976608288488

`floor(tan(10)+ϕ^(n+1))`
-/

namespace A080023.P5768906976608288488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (10 : ℝ) + Real.goldenRatio ^ (n + 1)⌋

end

end A080023.P5768906976608288488

namespace A080023

/-- `floor(tan(10)+ϕ^(n+1))` -/
def P5768906976608288488.Spec : Prop :=
  ∀ n, P5768906976608288488.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P6216967978311710103

`ceil(ϕ^(n+1)-acot(2))`
-/

namespace A080023.P6216967978311710103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (n + 1) - SequenceMachineLib.acot (2 : ℝ)⌉

end

end A080023.P6216967978311710103

namespace A080023

/-- `ceil(ϕ^(n+1)-acot(2))` -/
def P6216967978311710103.Spec : Prop :=
  ∀ n, P6216967978311710103.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P11608003640211628369

`floor(∑[ϕ*a(n-1)])` with `a(0)=2, a(1)=1`
-/

namespace A080023.P11608003640211628369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A080023.P11608003640211628369

namespace A080023

/-- `floor(∑[ϕ*a(n-1)])` -/
def P11608003640211628369.Spec : Prop :=
  ∀ n, P11608003640211628369.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P493398896989064028

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080023

/-- `a(n-1)+a(n-2)` -/
def P493398896989064028.Spec : Prop :=
  ∀ n, (P493398896989064028.a n : ℤ) = A080023 (n + 1)

theorem P493398896989064028.correct : P493398896989064028.Spec := by
  intro n
  simp only [A080023, Nat.add_sub_cancel]

end A080023

/-! ## A080023.P8933674206365013376

`a(n-1)-(char[2]-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A080023.P8933674206365013376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A080023.P8933674206365013376

namespace A080023

/-- `a(n-1)-(char[2]-a(n-2))` -/
def P8933674206365013376.Spec : Prop :=
  ∀ n, P8933674206365013376.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P17731145229611103729

`2*a(n-1)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A080023.P17731145229611103729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A080023.P17731145229611103729

namespace A080023

/-- `2*a(n-1)-a(n-3)` -/
def P17731145229611103729.Spec : Prop :=
  ∀ n, P17731145229611103729.a n = A080023 (n + 1)

end A080023

/-! ## A080023.P13643657036219431507

`a(n-1)-floor(2/n-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A080023.P13643657036219431507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - ⌊2 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A080023.P13643657036219431507

namespace A080023

/-- `a(n-1)-floor(2/n-a(n-2))` -/
def P13643657036219431507.Spec : Prop :=
  ∀ n, P13643657036219431507.a n = A080023 (n + 1)

end A080023

/-!
# A080024: Number of divisors d of n such that in binary representation d and n/d have the same number of 1's as n.

The programs for A080024, there is no canonical definition to state claims against.
-/

/-! ## A080024.P13651189466269426347

`A302193(n)*A354199(n+1)`
-/

namespace A080024.P13651189466269426347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302193 n * A354199 (n + 1)

end

end A080024.P13651189466269426347

/-! ## A080024.P13335853805281245128

`A098108(A002654(n+1))*A302193(n)`
-/

namespace A080024.P13335853805281245128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A002654 (n + 1)).toNat * A302193 n

end

end A080024.P13335853805281245128

/-! ## A080024.P14728352486963213536

`A203951(A000593(n+1))*A302193(n)`
-/

namespace A080024.P14728352486963213536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203951 (A000593 (n + 1)).toNat * A302193 n

end

end A080024.P14728352486963213536

/-! ## A080024.P9986811524170066940

`val(A302192(n), 2)*A098108(A002654(n+1))`
-/

namespace A080024.P9986811524170066940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A302192 n).toNat 2 : ℤ) * A098108 (A002654 (n + 1)).toNat

end

end A080024.P9986811524170066940

/-! ## A080024.P4833604119573127195

`A326813(A065621(n+1)*A074044(n+1))`
-/

namespace A080024.P4833604119573127195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326813 (A065621 (n + 1) * A074044 (n + 1)).toNat

end

end A080024.P4833604119573127195

/-! ## A080024.P6861560675812573299

`A326813((n+1)*A065621(n+1))`
-/

namespace A080024.P6861560675812573299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326813 ((n + 1 : ℤ) * A065621 (n + 1)).toNat

end

end A080024.P6861560675812573299

/-! ## A080024.P5421518078418285931

`val(A130507(A105673(n+1)!)+2*n+1, 2)`
-/

namespace A080024.P5421518078418285931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130507 (Nat.factorial (A105673 (n + 1)).toNat) + (2 * n + 1 : ℤ)).toNat 2

end

end A080024.P5421518078418285931

/-! ## A080024.P4903920963114328531

`A001511(n+1)*A130507(A105673(n+1)!)`
-/

namespace A080024.P4903920963114328531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A130507 (Nat.factorial (A105673 (n + 1)).toNat)

end

end A080024.P4903920963114328531

/-! ## A080024.P6375679512407830536

`lcm(A035184(n+1), A130507(A105673(n+1)!))`
-/

namespace A080024.P6375679512407830536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035184 (n + 1)) (A130507 (Nat.factorial (A105673 (n + 1)).toNat))

end

end A080024.P6375679512407830536

/-!
# A080025: Numbers n having at least one divisor d such that in binary representation d and n/d have the same number of 1's as n.

The programs for A080025, there is no canonical definition to state claims against.
-/

/-! ## A080025.P6312966836055774281

`lt[0, A080024(n+1)]+1`
-/

namespace A080025.P6312966836055774281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080025.P6312966836055774281

/-! ## A080025.P4044398978011251712

`lt[A249832(n), A080024(A028310(n))]`
-/

namespace A080025.P4044398978011251712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080024 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080025.P4044398978011251712

/-! ## A080025.P4101377182524669967

`lt[1, A080024(A004277(n))]`
-/

namespace A080025.P4101377182524669967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080024 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080025.P4101377182524669967

/-! ## A080025.P15929081938498151924

`lt[1, A080024(A028310(2*n))]`
-/

namespace A080025.P15929081938498151924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080024 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080025.P15929081938498151924

/-! ## A080025.P5775012038513579535

`lt[1, A080024(A028310(n)+n)]`
-/

namespace A080025.P5775012038513579535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080024 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080025.P5775012038513579535

/-!
# A080026: Numbers k having exactly one divisor d such that in binary representation d and k/d have the same number of 1's as k.

The programs for A080026, there is no canonical definition to state claims against.
-/

/-! ## A080026.P12560967117403511981

`A000265(or(A112921(n+3), A261586(n+1))²)`
-/

namespace A080026.P12560967117403511981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A112921 (n + 3)) (A261586 (n + 1)) ^ 2).toNat

end

end A080026.P12560967117403511981

/-! ## A080026.P14176688372028204253

`A309002(A261586(n+1))`
-/

namespace A080026.P14176688372028204253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309002 (A261586 (n + 1)).toNat

end

end A080026.P14176688372028204253

/-! ## A080026.P16408327382996234115

`A056926(A261586(n+1)²)²`
-/

namespace A080026.P16408327382996234115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A261586 (n + 1) ^ 2).toNat ^ 2

end

end A080026.P16408327382996234115

/-! ## A080026.P427895856325678295

`(A261586(n+1)%A055623(2*n+3))²`
-/

namespace A080026.P427895856325678295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261586 (n + 1)) (A055623 (2 * n + 3)) ^ 2

end

end A080026.P427895856325678295

/-! ## A080026.P9952134635701232477

`A261586(n+1)^A001221(A005015(n))`
-/

namespace A080026.P9952134635701232477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261586 (n + 1) : ℚ) ^ (A001221 (A005015 n).toNat : ℤ)

end

end A080026.P9952134635701232477

/-!
# A080027: Let s(1) = 1; let s(2m) = {s(2m-1),m+1,s(2m-1)}, s(2m+1) = {s(2m),s(2m)}; sequence gives limit of s(k) for large k.

The programs for A080027, the canonical program `A080027.P3131391736588176350` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080027 has offset 1).

The definition of A080027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080027.P3131391736588176350

`A363228(A359794(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A080027

/-- `A363228(A359794(n+1))` -/
def P3131391736588176350.Spec : Prop :=
  ∀ n, P3131391736588176350.a n = A080027 (n + 1)

theorem P3131391736588176350.correct : P3131391736588176350.Spec := by
  intro n
  simp only [A080027, Nat.add_sub_cancel]

end A080027

/-! ## A080027.P3825950338053505565

`A261794(A011776(n+1)*A079625(n+3))`
-/

namespace A080027.P3825950338053505565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A011776 (n + 1) * A079625 (n + 3)).toNat

end

end A080027.P3825950338053505565

namespace A080027

/-- `A261794(A011776(n+1)*A079625(n+3))` -/
def P3825950338053505565.Spec : Prop :=
  ∀ n, P3825950338053505565.a n = A080027 (n + 1)

end A080027

/-! ## A080027.P14535247285903971323

`A124765(gcd(A238130(3*n+1), A335373(3*n+2)))`
-/

namespace A080027.P14535247285903971323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.gcd (A238130 (3 * n + 1)) (A335373 (3 * n + 2)))

end

end A080027.P14535247285903971323

namespace A080027

/-- `A124765(gcd(A238130(3*n+1), A335373(3*n+2)))` -/
def P14535247285903971323.Spec : Prop :=
  ∀ n, P14535247285903971323.a n = A080027 (n + 1)

end A080027

/-! ## A080027.P5770905068587562491

`A385685(A374147(n+2))`
-/

namespace A080027.P5770905068587562491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385685 (A374147 (n + 2)).toNat

end

end A080027.P5770905068587562491

namespace A080027

/-- `A385685(A374147(n+2))` -/
def P5770905068587562491.Spec : Prop :=
  ∀ n, P5770905068587562491.a n = A080027 (n + 1)

end A080027

/-! ## A080027.P1793394942794288503

`A106459(A329383(n+1))+A080354(n)`
-/

namespace A080027.P1793394942794288503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (A329383 (n + 1)).toNat + A080354 n

end

end A080027.P1793394942794288503

namespace A080027

/-- `A106459(A329383(n+1))+A080354(n)` -/
def P1793394942794288503.Spec : Prop :=
  ∀ n, P1793394942794288503.a n = A080027 (n + 1)

end A080027

/-!
# A080028: Let s(1) = 1; let s(2m+1) = {s(2m),m+1,s(2m)}, s(2m) = {s(2m-1),s(2m-1)}; sequence gives limit of s(k) for large k.

The programs for A080028, the canonical program `A080028.P4965007689846730153` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080028 has offset 1).

The definition of A080028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080028.P5875374948203578257

`val(2*comp[n*and(n, -n)], 4)`
-/

namespace A080028.P5875374948203578257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 4

end

end A080028.P5875374948203578257

namespace A080028

/-- `val(2*comp[n*and(n, -n)], 4)` -/
def P5875374948203578257.Spec : Prop :=
  ∀ n, (P5875374948203578257.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P4965007689846730153

`val(eq[1, and(n, -n)%3], 4)+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080028

/-- `val(eq[1, and(n, -n)%3], 4)+1` -/
def P4965007689846730153.Spec : Prop :=
  ∀ n, (P4965007689846730153.a n : ℤ) = A080028 (n + 1)

theorem P4965007689846730153.correct : P4965007689846730153.Spec := by
  intro n
  simp only [A080028, Nat.add_sub_cancel]

end A080028

/-! ## A080028.P4404048183468592445

`val(eq[0, xor(n, n-1)%3], 4)+1`
-/

namespace A080028.P4404048183468592445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 4 + 1

end

end A080028.P4404048183468592445

namespace A080028

/-- `val(eq[0, xor(n, n-1)%3], 4)+1` -/
def P4404048183468592445.Spec : Prop :=
  ∀ n, (P4404048183468592445.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P2011145951431675535

`val(2*(comp[or(n, val(n+2, 2))]+2), 4)`
-/

namespace A080028.P2011145951431675535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)) 4

end

end A080028.P2011145951431675535

namespace A080028

/-- `val(2*(comp[or(n, val(n+2, 2))]+2), 4)` -/
def P2011145951431675535.Spec : Prop :=
  ∀ n, (P2011145951431675535.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P15895062320733861398

`val(4*(eq[0, val(n+1, 2)%2]+1), 4)`
-/

namespace A080028.P15895062320733861398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)) 4

end

end A080028.P15895062320733861398

namespace A080028

/-- `val(4*(eq[0, val(n+1, 2)%2]+1), 4)` -/
def P15895062320733861398.Spec : Prop :=
  ∀ n, (P15895062320733861398.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P16131450895442943538

`val(A108269(n+1), 4)`
-/

namespace A080028.P16131450895442943538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108269 (n + 1)).toNat 4

end

end A080028.P16131450895442943538

namespace A080028

/-- `val(A108269(n+1), 4)` -/
def P16131450895442943538.Spec : Prop :=
  ∀ n, (P16131450895442943538.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P14161580083067076559

`A364213(n+1)/2+1`
-/

namespace A080028.P14161580083067076559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364213 (n + 1) : ℚ) / 2 + 1

end

end A080028.P14161580083067076559

namespace A080028

/-- `A364213(n+1)/2+1` -/
def P14161580083067076559.Spec : Prop :=
  ∀ n, P14161580083067076559.a n = (A080028 (n + 1) : ℚ)

end A080028

/-! ## A080028.P574619726183415554

`val(A003159(n+1), 4)+1`
-/

namespace A080028.P574619726183415554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003159 (n + 1)).toNat 4 + 1

end

end A080028.P574619726183415554

namespace A080028

/-- `val(A003159(n+1), 4)+1` -/
def P574619726183415554.Spec : Prop :=
  ∀ n, (P574619726183415554.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P13516106889476866364

`val(A036554(n+1), 4)+1`
-/

namespace A080028.P13516106889476866364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036554 (n + 1)).toNat 4 + 1

end

end A080028.P13516106889476866364

namespace A080028

/-- `val(A036554(n+1), 4)+1` -/
def P13516106889476866364.Spec : Prop :=
  ∀ n, (P13516106889476866364.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P16701758392066844455

`val(A131323(n+1)+1, 4)`
-/

namespace A080028.P16701758392066844455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131323 (n + 1) + 1).toNat 4

end

end A080028.P16701758392066844455

namespace A080028

/-- `val(A131323(n+1)+1, 4)` -/
def P16701758392066844455.Spec : Prop :=
  ∀ n, (P16701758392066844455.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P14568670946899509943

`val(∑[4*A026465(n+1)], 4)`
-/

namespace A080028.P14568670946899509943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A026465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 4

end

end A080028.P14568670946899509943

namespace A080028

/-- `val(∑[4*A026465(n+1)], 4)` -/
def P14568670946899509943.Spec : Prop :=
  ∀ n, (P14568670946899509943.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P10785349184223737767

`val(A162648(n+1)+2, 4)+1`
-/

namespace A080028.P10785349184223737767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A162648 (n + 1) + 2).toNat 4 + 1

end

end A080028.P10785349184223737767

namespace A080028

/-- `val(A162648(n+1)+2, 4)+1` -/
def P10785349184223737767.Spec : Prop :=
  ∀ n, (P10785349184223737767.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P16837547939052661874

`val(2*(eq[3, A020639(xor(n, n+1))]+1), 4)`
-/

namespace A080028.P16837547939052661874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) 4

end

end A080028.P16837547939052661874

namespace A080028

/-- `val(2*(eq[3, A020639(xor(n, n+1))]+1), 4)` -/
def P16837547939052661874.Spec : Prop :=
  ∀ n, (P16837547939052661874.a n : ℤ) = A080028 (n + 1)

end A080028

/-! ## A080028.P12009724655435083056

`A115362(A121539(n+1))`
-/

namespace A080028.P12009724655435083056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A121539 (n + 1)).toNat

end

end A080028.P12009724655435083056

namespace A080028

/-- `A115362(A121539(n+1))` -/
def P12009724655435083056.Spec : Prop :=
  ∀ n, P12009724655435083056.a n = A080028 (n + 1)

end A080028

/-! ## A080028.P15465120015762651629

`A115362(A161579(n+1))`
-/

namespace A080028.P15465120015762651629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A161579 (n + 1)).toNat

end

end A080028.P15465120015762651629

namespace A080028

/-- `A115362(A161579(n+1))` -/
def P15465120015762651629.Spec : Prop :=
  ∀ n, P15465120015762651629.a n = A080028 (n + 1)

end A080028

/-! ## A080028.P16823756011656294960

`A235127(A108269(n+1))`
-/

namespace A080028.P16823756011656294960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A108269 (n + 1)).toNat

end

end A080028.P16823756011656294960

namespace A080028

/-- `A235127(A108269(n+1))` -/
def P16823756011656294960.Spec : Prop :=
  ∀ n, P16823756011656294960.a n = A080028 (n + 1)

end A080028

/-! ## A080028.P3561386857381280260

`A235127(A003159(n+1))+1`
-/

namespace A080028.P3561386857381280260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A003159 (n + 1)).toNat + 1

end

end A080028.P3561386857381280260

namespace A080028

/-- `A235127(A003159(n+1))+1` -/
def P3561386857381280260.Spec : Prop :=
  ∀ n, P3561386857381280260.a n = A080028 (n + 1)

end A080028

/-! ## A080028.P5118912382856875391

`A235127(A036554(n+1))+1`
-/

namespace A080028.P5118912382856875391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A036554 (n + 1)).toNat + 1

end

end A080028.P5118912382856875391

namespace A080028

/-- `A235127(A036554(n+1))+1` -/
def P5118912382856875391.Spec : Prop :=
  ∀ n, P5118912382856875391.a n = A080028 (n + 1)

end A080028

/-! ## A080028.P1666142731230177219

`val(Δ[A079523(n+1)²], 4)`
-/

namespace A080028.P1666142731230177219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A080028.P1666142731230177219

namespace A080028

/-- `val(Δ[A079523(n+1)²], 4)` -/
def P1666142731230177219.Spec : Prop :=
  ∀ n, (P1666142731230177219.a n : ℤ) = A080028 (n + 1)

end A080028

/-!
# A080029: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is a multiple of 3".

The programs for A080029, the canonical program `A080029.P10167826981226000952` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080029 has offset 0).

The definition of A080029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080029.P10167826981226000952

`gcd(n, n²%3)+(n-2)*(n%3)!+2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080029

/-- `gcd(n, n²%3)+(n-2)*(n%3)!+2` -/
def P10167826981226000952.Spec : Prop :=
  ∀ n, P10167826981226000952.a n = A080029 n

theorem P10167826981226000952.correct : P10167826981226000952.Spec := by
  intro n
  simp only [A080029]

end A080029

/-! ## A080029.P4072795961264086226

`A222256(n)+A088439(n)`
-/

namespace A080029.P4072795961264086226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222256 n + A088439 n

end

end A080029.P4072795961264086226

namespace A080029

/-- `A222256(n)+A088439(n)` -/
def P4072795961264086226.Spec : Prop :=
  ∀ n, P4072795961264086226.a n = A080029 n

theorem P4072795961264086226.correct : P4072795961264086226.Spec := by
  intro n
  simp only [A080029, Nat.add_sub_cancel, A080029.P4072795961264086226.a, A080029.P10167826981226000952.a, A088439, A088439.P8470955749535570929.a, A222256, A222256.P15888438300221709581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080029

/-! ## A080029.P8831072560939376091

`ceil(A265667(n)+A265667(n)/2)`
-/

namespace A080029.P8831072560939376091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265667 n : ℚ) + (A265667 n : ℚ) / 2⌉

end

end A080029.P8831072560939376091

namespace A080029

/-- `ceil(A265667(n)+A265667(n)/2)` -/
def P8831072560939376091.Spec : Prop :=
  ∀ n, P8831072560939376091.a n = A080029 n

end A080029

/-! ## A080029.P12408213710580749095

`A080031(A064429(n)+1)-2`
-/

namespace A080029.P12408213710580749095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080031 (A064429 n + 1).toNat - 2

end

end A080029.P12408213710580749095

namespace A080029

/-- `A080031(A064429(n)+1)-2` -/
def P12408213710580749095.Spec : Prop :=
  ∀ n, P12408213710580749095.a n = A080029 n

end A080029

/-! ## A080029.P2756597637448106640

`A064429(n)+n%A064429(n+1)`
-/

namespace A080029.P2756597637448106640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n + Int.tmod (n : ℤ) (A064429 (n + 1))

end

end A080029.P2756597637448106640

namespace A080029

/-- `A064429(n)+n%A064429(n+1)` -/
def P2756597637448106640.Spec : Prop :=
  ∀ n, P2756597637448106640.a n = A080029 n

end A080029

/-! ## A080029.P13623082701507773692

`A007494(A265667(n))`
-/

namespace A080029.P13623082701507773692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A265667 n).toNat

end

end A080029.P13623082701507773692

namespace A080029

/-- `A007494(A265667(n))` -/
def P13623082701507773692.Spec : Prop :=
  ∀ n, P13623082701507773692.a n = A080029 n

end A080029

/-! ## A080029.P17592329735491473921

`A006368(xor(1, A004773(n)+1))`
-/

namespace A080029.P17592329735491473921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.xor 1 (A004773 n + 1)).toNat

end

end A080029.P17592329735491473921

namespace A080029

/-- `A006368(xor(1, A004773(n)+1))` -/
def P17592329735491473921.Spec : Prop :=
  ∀ n, P17592329735491473921.a n = A080029 n

end A080029

/-! ## A080029.P3732928053624844361

`A074306(comp[record[xor(3, n)]])`
-/

namespace A080029.P3732928053624844361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A080029.P3732928053624844361

namespace A080029

/-- `A074306(comp[record[xor(3, n)]])` -/
def P3732928053624844361.Spec : Prop :=
  ∀ n, P3732928053624844361.a n = A080029 n

end A080029

/-! ## A080029.P8390197763744204345

`A074306(comp[4*n-1])`
-/

namespace A080029.P8390197763744204345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080029.P8390197763744204345

namespace A080029

/-- `A074306(comp[4*n-1])` -/
def P8390197763744204345.Spec : Prop :=
  ∀ n, P8390197763744204345.a n = A080029 n

end A080029

/-! ## A080029.P4862098362743432545

`A032766(A265667(n)+1)-1`
-/

namespace A080029.P4862098362743432545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A265667 n + 1).toNat - 1

end

end A080029.P4862098362743432545

namespace A080029

/-- `A032766(A265667(n)+1)-1` -/
def P4862098362743432545.Spec : Prop :=
  ∀ n, P4862098362743432545.a n = A080029 n

end A080029

/-! ## A080029.P7044795697531021028

`A001651(A265667(n)+2)-2`
-/

namespace A080029.P7044795697531021028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A265667 n + 2).toNat - 2

end

end A080029.P7044795697531021028

namespace A080029

/-- `A001651(A265667(n)+2)-2` -/
def P7044795697531021028.Spec : Prop :=
  ∀ n, P7044795697531021028.a n = A080029 n

end A080029

/-! ## A080029.P14140933171609655188

`A265667(n)+A004526(A265667(n)+1)`
-/

namespace A080029.P14140933171609655188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 n + A004526 (A265667 n + 1).toNat

end

end A080029.P14140933171609655188

namespace A080029

/-- `A265667(n)+A004526(A265667(n)+1)` -/
def P14140933171609655188.Spec : Prop :=
  ∀ n, P14140933171609655188.a n = A080029 n

end A080029

/-! ## A080029.P13773912201498809921

`filter[A074306(n), A204418(#)]`
-/

namespace A080029.P13773912201498809921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A080029.P13773912201498809921

namespace A080029

/-- `filter[A074306(n), A204418(#)]` -/
def P13773912201498809921.Spec : Prop :=
  ∀ n, P13773912201498809921.a n = A080029 n

end A080029

/-! ## A080029.P13619667506295173879

`A057979(A047240(n+1)+1)+n`
-/

namespace A080029.P13619667506295173879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A047240 (n + 1) + 1).toNat + (n : ℤ)

end

end A080029.P13619667506295173879

namespace A080029

/-- `A057979(A047240(n+1)+1)+n` -/
def P13619667506295173879.Spec : Prop :=
  ∀ n, P13619667506295173879.a n = A080029 n

end A080029

/-! ## A080029.P5355042366390014460

`A029739(n+1)-gcd(n, A029739(A029739(n+1)))`
-/

namespace A080029.P5355042366390014460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1) - (Int.gcd (n : ℤ) (A029739 (A029739 (n + 1)).toNat) : ℤ)

end

end A080029.P5355042366390014460

namespace A080029

/-- `A029739(n+1)-gcd(n, A029739(A029739(n+1)))` -/
def P5355042366390014460.Spec : Prop :=
  ∀ n, P5355042366390014460.a n = A080029 n

end A080029

/-! ## A080029.P18003341755957025272

`A291290(A047261(n+1))`
-/

namespace A080029.P18003341755957025272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A047261 (n + 1)).toNat

end

end A080029.P18003341755957025272

namespace A080029

/-- `A291290(A047261(n+1))` -/
def P18003341755957025272.Spec : Prop :=
  ∀ n, P18003341755957025272.a n = A080029 n

end A080029

/-! ## A080029.P7987672213767828795

`A249693(A173773(n))`
-/

namespace A080029.P7987672213767828795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (A173773 n).toNat

end

end A080029.P7987672213767828795

namespace A080029

/-- `A249693(A173773(n))` -/
def P7987672213767828795.Spec : Prop :=
  ∀ n, P7987672213767828795.a n = A080029 n

end A080029

/-!
# A080030: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is congruent to 1 mod 3".

The programs for A080030, the canonical program `A080030.P11163507962179747739` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080030 has offset 0).

The definition of A080030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080030.P11163507962179747739

`abs(Δ[n*(2*n)%3]-n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080030

/-- `abs(Δ[n*(2*n)%3]-n)` -/
def P11163507962179747739.Spec : Prop :=
  ∀ n, P11163507962179747739.a n = A080030 n

theorem P11163507962179747739.correct : P11163507962179747739.Spec := by
  intro n
  simp only [A080030]

end A080030

/-! ## A080030.P710659256425965005

`a(n%3-3+n)+3` with `a(0)=2, a(1)=1`
-/

namespace A080030.P710659256425965005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (((n % 3 : ℕ) : ℤ) - 3 + (n : ℤ)).toNat + 3

end

end A080030.P710659256425965005

namespace A080030

/-- `a(n%3-3+n)+3` -/
def P710659256425965005.Spec : Prop :=
  ∀ n, (P710659256425965005.a n : ℤ) = A080030 n

end A080030

/-! ## A080030.P16302628113546778939

`3*n-a(n-a(n-2)%3)` with `a(0)=2, a(1)=1`
-/

namespace A080030.P16302628113546778939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (3 * n : ℤ) - a ((n : ℤ) - Int.tmod (a (n - 2)) 3).toNat

end

end A080030.P16302628113546778939

namespace A080030

/-- `3*n-a(n-a(n-2)%3)` -/
def P16302628113546778939.Spec : Prop :=
  ∀ n, P16302628113546778939.a n = A080030 n

end A080030

/-! ## A080030.P340398092862701361

`∑{d}[a(n-1)-a(n-2), n-#]+3` with `a(0)=1, a(1)=3`
-/

namespace A080030.P340398092862701361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - (d : ℤ)) + 3

end

end A080030.P340398092862701361

namespace A080030

/-- `∑{d}[a(n-1)-a(n-2), n-#]+3` -/
def P340398092862701361.Spec : Prop :=
  ∀ n, P340398092862701361.a n = A080030 n

end A080030

/-! ## A080030.P5078641305300191321

`3-∑{d}[a(n-1)-a(n-2), #-n]` with `a(0)=1, a(1)=3`
-/

namespace A080030.P5078641305300191321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - (n : ℤ))

end

end A080030.P5078641305300191321

namespace A080030

/-- `3-∑{d}[a(n-1)-a(n-2), #-n]` -/
def P5078641305300191321.Spec : Prop :=
  ∀ n, P5078641305300191321.a n = A080030 n

end A080030

/-! ## A080030.P5516397009618073669

`A032766(xor(1, A006369(n)))+1`
-/

namespace A080030.P5516397009618073669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Int.xor 1 (A006369 n)).toNat + 1

end

end A080030.P5516397009618073669

namespace A080030

/-- `A032766(xor(1, A006369(n)))+1` -/
def P5516397009618073669.Spec : Prop :=
  ∀ n, P5516397009618073669.a n = A080030 n

end A080030

/-! ## A080030.P13898855350387627360

`A166517(A006369(n))`
-/

namespace A080030.P13898855350387627360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A006369 n).toNat

end

end A080030.P13898855350387627360

namespace A080030

/-- `A166517(A006369(n))` -/
def P13898855350387627360.Spec : Prop :=
  ∀ n, P13898855350387627360.a n = A080030 n

end A080030

/-! ## A080030.P403279404391044027

`A004482(a(n-3))+5` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A080030.P403279404391044027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4] fun n a =>
  A004482 (a (n - 3)).toNat + 5

end

end A080030.P403279404391044027

namespace A080030

/-- `A004482(a(n-3))+5` -/
def P403279404391044027.Spec : Prop :=
  ∀ n, P403279404391044027.a n = A080030 n

end A080030

/-! ## A080030.P13219790227547218157

`A064429(A080031(n))`
-/

namespace A080030.P13219790227547218157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A080031 n).toNat

end

end A080030.P13219790227547218157

namespace A080030

/-- `A064429(A080031(n))` -/
def P13219790227547218157.Spec : Prop :=
  ∀ n, P13219790227547218157.a n = A080030 n

end A080030

/-! ## A080030.P4462809900387245932

`A113655(A080029(n+1))`
-/

namespace A080030.P4462809900387245932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A080029 (n + 1)).toNat

end

end A080030.P4462809900387245932

namespace A080030

/-- `A113655(A080029(n+1))` -/
def P4462809900387245932.Spec : Prop :=
  ∀ n, P4462809900387245932.a n = A080030 n

end A080030

/-! ## A080030.P212887690067832437

`A291290(A047234(n+1)+1)+1`
-/

namespace A080030.P212887690067832437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291290 (A047234 (n + 1) + 1).toNat + 1

end

end A080030.P212887690067832437

namespace A080030

/-- `A291290(A047234(n+1)+1)+1` -/
def P212887690067832437.Spec : Prop :=
  ∀ n, P212887690067832437.a n = A080030 n

end A080030

/-! ## A080030.P10050678896913580699

`A074306(2*A006369(n)+1)`
-/

namespace A080030.P10050678896913580699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (2 * A006369 n + 1).toNat

end

end A080030.P10050678896913580699

namespace A080030

/-- `A074306(2*A006369(n)+1)` -/
def P10050678896913580699.Spec : Prop :=
  ∀ n, P10050678896913580699.a n = A080030 n

end A080030

/-! ## A080030.P8127791856284705190

`A074306(A006369(n)+A006369(n)+1)`
-/

namespace A080030.P8127791856284705190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A006369 n + (A006369 n + 1)).toNat

end

end A080030.P8127791856284705190

namespace A080030

/-- `A074306(A006369(n)+A006369(n)+1)` -/
def P8127791856284705190.Spec : Prop :=
  ∀ n, P8127791856284705190.a n = A080030 n

end A080030

/-!
# A080031: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is congruent to 2 mod 3".

The programs for A080031, the canonical program `A080031.P846171349840780933` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080031 has offset 0).

The definition of A080031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080031.P2623275695529592978

`∑[n%3]+n^(n²%3)`
-/

namespace A080031.P2623275695529592978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n ^ 2 % 3)

end

end A080031.P2623275695529592978

namespace A080031

/-- `∑[n%3]+n^(n²%3)` -/
def P2623275695529592978.Spec : Prop :=
  ∀ n, (P2623275695529592978.a n : ℤ) = A080031 n

end A080031

/-! ## A080031.P846171349840780933

`abs(n+1-Δ[n*(2*n)%3])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080031

/-- `abs(n+1-Δ[n*(2*n)%3])` -/
def P846171349840780933.Spec : Prop :=
  ∀ n, P846171349840780933.a n = A080031 n

theorem P846171349840780933.correct : P846171349840780933.Spec := by
  intro n
  simp only [A080031]

end A080031

/-! ## A080031.P9758299253963068292

`((n+2)%3-1+n)%(n+1)+n+1`
-/

namespace A080031.P9758299253963068292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((n + 2) % 3 : ℕ) : ℤ) - 1 + (n : ℤ)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A080031.P9758299253963068292

namespace A080031

/-- `((n+2)%3-1+n)%(n+1)+n+1` -/
def P9758299253963068292.Spec : Prop :=
  ∀ n, P9758299253963068292.a n = A080031 n

end A080031

/-! ## A080031.P5133581144793891090

`∑{d}[a(n-1)-a(n-2), 2-#+n]` with `a(0)=1, a(1)=3`
-/

namespace A080031.P5133581144793891090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (2 - (d : ℤ) + (n : ℤ))

end

end A080031.P5133581144793891090

namespace A080031

/-- `∑{d}[a(n-1)-a(n-2), 2-#+n]` -/
def P5133581144793891090.Spec : Prop :=
  ∀ n, P5133581144793891090.a n = A080031 n

end A080031

/-! ## A080031.P4707811691246060778

`3*n-a(n-1)/gcd(a(n-1)%3, a(n-1))` with `a(0)=1`
-/

namespace A080031.P4707811691246060778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℚ) - a (n - 1) / (Int.gcd (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A080031.P4707811691246060778

namespace A080031

/-- `3*n-a(n-1)/gcd(a(n-1)%3, a(n-1))` -/
def P4707811691246060778.Spec : Prop :=
  ∀ n, P4707811691246060778.a n = (A080031 n : ℚ)

end A080031

/-! ## A080031.P11619799786520497590

`A117571(A091684(n))+n`
-/

namespace A080031.P11619799786520497590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (A091684 n).toNat + (n : ℤ)

end

end A080031.P11619799786520497590

namespace A080031

/-- `A117571(A091684(n))+n` -/
def P11619799786520497590.Spec : Prop :=
  ∀ n, P11619799786520497590.a n = A080031 n

end A080031

/-! ## A080031.P5447224667200235103

`A168056(n)+A166711(n)`
-/

namespace A080031.P5447224667200235103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A166711 n

end

end A080031.P5447224667200235103

namespace A080031

/-- `A168056(n)+A166711(n)` -/
def P5447224667200235103.Spec : Prop :=
  ∀ n, P5447224667200235103.a n = A080031 n

end A080031

/-! ## A080031.P5622880584025745733

`A080029(n+1)-1`
-/

namespace A080031.P5622880584025745733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080029 (n + 1) - 1

end

end A080031.P5622880584025745733

namespace A080031

/-- `A080029(n+1)-1` -/
def P5622880584025745733.Spec : Prop :=
  ∀ n, P5622880584025745733.a n = A080031 n

end A080031

/-! ## A080031.P2087642479959124795

`abs(Δ[n*A010892(n)])+n`
-/

namespace A080031.P2087642479959124795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + (n : ℤ)

end

end A080031.P2087642479959124795

namespace A080031

/-- `abs(Δ[n*A010892(n)])+n` -/
def P2087642479959124795.Spec : Prop :=
  ∀ n, P2087642479959124795.a n = A080031 n

end A080031

/-! ## A080031.P782810293380194571

`A088439(n+1)+A222256(n+1)-1`
-/

namespace A080031.P782810293380194571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 (n + 1) + (A222256 (n + 1) - 1)

end

end A080031.P782810293380194571

namespace A080031

/-- `A088439(n+1)+A222256(n+1)-1` -/
def P782810293380194571.Spec : Prop :=
  ∀ n, P782810293380194571.a n = A080031 n

end A080031

/-! ## A080031.P17516464867125949588

`A001651(A006369(n)+1)`
-/

namespace A080031.P17516464867125949588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A006369 n + 1).toNat

end

end A080031.P17516464867125949588

namespace A080031

/-- `A001651(A006369(n)+1)` -/
def P17516464867125949588.Spec : Prop :=
  ∀ n, P17516464867125949588.a n = A080031 n

end A080031

/-! ## A080031.P15685229962967782871

`A001651(A265667(n+1))`
-/

namespace A080031.P15685229962967782871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A265667 (n + 1)).toNat

end

end A080031.P15685229962967782871

namespace A080031

/-- `A001651(A265667(n+1))` -/
def P15685229962967782871.Spec : Prop :=
  ∀ n, P15685229962967782871.a n = A080031 n

end A080031

/-! ## A080031.P9983125784880430497

`A007494(A006369(n)+1)-1`
-/

namespace A080031.P9983125784880430497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A006369 n + 1).toNat - 1

end

end A080031.P9983125784880430497

namespace A080031

/-- `A007494(A006369(n)+1)-1` -/
def P9983125784880430497.Spec : Prop :=
  ∀ n, P9983125784880430497.a n = A080031 n

end A080031

/-! ## A080031.P427415988844037062

`A249693(A042965(n+1))`
-/

namespace A080031.P427415988844037062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (A042965 (n + 1)).toNat

end

end A080031.P427415988844037062

namespace A080031

/-- `A249693(A042965(n+1))` -/
def P427415988844037062.Spec : Prop :=
  ∀ n, P427415988844037062.a n = A080031 n

end A080031

/-! ## A080031.P16255913086865905951

`A074306(A004773(n+1))-1`
-/

namespace A080031.P16255913086865905951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A004773 (n + 1)).toNat - 1

end

end A080031.P16255913086865905951

namespace A080031

/-- `A074306(A004773(n+1))-1` -/
def P16255913086865905951.Spec : Prop :=
  ∀ n, P16255913086865905951.a n = A080031 n

end A080031

/-! ## A080031.P15412988488390552224

`A249693(lt[A165943(n), A165943(n+2)])`
-/

namespace A080031.P15412988488390552224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165943 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080031.P15412988488390552224

namespace A080031

/-- `A249693(lt[A165943(n), A165943(n+2)])` -/
def P15412988488390552224.Spec : Prop :=
  ∀ n, P15412988488390552224.a n = A080031 n

end A080031

/-! ## A080031.P17311411111013733121

`A130508(a(n-3)+5)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A080031.P17311411111013733121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A130508 (a (n - 3) + 5).toNat

end

end A080031.P17311411111013733121

namespace A080031

/-- `A130508(a(n-3)+5)` -/
def P17311411111013733121.Spec : Prop :=
  ∀ n, P17311411111013733121.a n = A080031 n

end A080031

/-! ## A080031.P7123293697038008870

`A064429(A080030(n))`
-/

namespace A080031.P7123293697038008870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A080030 n).toNat

end

end A080031.P7123293697038008870

namespace A080031

/-- `A064429(A080030(n))` -/
def P7123293697038008870.Spec : Prop :=
  ∀ n, P7123293697038008870.a n = A080031 n

end A080031

/-! ## A080031.P10796343952629857939

`A023443(A080029(n+1))`
-/

namespace A080031.P10796343952629857939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080029 (n + 1)).toNat

end

end A080031.P10796343952629857939

namespace A080031

/-- `A023443(A080029(n+1))` -/
def P10796343952629857939.Spec : Prop :=
  ∀ n, P10796343952629857939.a n = A080031 n

end A080031

/-! ## A080031.P13445326281474247030

`filter[A249693(n), A011655(#)]`
-/

namespace A080031.P13445326281474247030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A080031.P13445326281474247030

namespace A080031

/-- `filter[A249693(n), A011655(#)]` -/
def P13445326281474247030.Spec : Prop :=
  ∀ n, P13445326281474247030.a n = A080031 n

end A080031

/-!
# A080032: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is even".

The programs for A080032, there is no canonical definition to state claims against.
-/

/-! ## A080032.P1697764704771105215

`A079313(n+1)-1`
-/

namespace A080032.P1697764704771105215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079313 (n + 1) - 1

end

end A080032.P1697764704771105215

/-! ## A080032.P5587248226724886497

`A001478(n+1)+A079313(n+1)+n`
-/

namespace A080032.P5587248226724886497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A079313 (n + 1) + (n : ℤ))

end

end A080032.P5587248226724886497

/-! ## A080032.P1736556994706900097

`(A079313(n+1)+4*n+1)%(2*A005408(n))`
-/

namespace A080032.P1736556994706900097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079313 (n + 1) + (4 * n + 1 : ℤ)) (2 * A005408 n)

end

end A080032.P1736556994706900097

/-! ## A080032.P8220821729147239979

`A321804(A062069(n+1))+A079313(n+1)`
-/

namespace A080032.P8220821729147239979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A062069 (n + 1)).toNat + A079313 (n + 1)

end

end A080032.P8220821729147239979

/-! ## A080032.P12368111579998791137

`A023443(A079313(n+1))`
-/

namespace A080032.P12368111579998791137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079313 (n + 1)).toNat

end

end A080032.P12368111579998791137

/-! ## A080032.P8228171903829914065

`A023444(A079313(n+1)+1)`
-/

namespace A080032.P8228171903829914065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A079313 (n + 1) + 1).toNat

end

end A080032.P8228171903829914065

/-! ## A080032.P9704845302513633966

`A289207(A079313(n+1)+1)`
-/

namespace A080032.P9704845302513633966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A079313 (n + 1) + 1).toNat

end

end A080032.P9704845302513633966

/-! ## A080032.P2921448734148536557

`A023445(A079313(n+1)+2)`
-/

namespace A080032.P2921448734148536557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A079313 (n + 1) + 2).toNat

end

end A080032.P2921448734148536557

/-! ## A080032.P9280442603248339715

`A023451(A079313(n+1)+8)`
-/

namespace A080032.P9280442603248339715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A079313 (n + 1) + 8).toNat

end

end A080032.P9280442603248339715

/-! ## A080032.P3548021287168514461

`A023453(A079313(n+1)+10)`
-/

namespace A080032.P3548021287168514461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 (A079313 (n + 1) + 10).toNat

end

end A080032.P3548021287168514461

/-! ## A080032.P7494656667279772519

`(A079313(n+1)+∑[A103517(2*n)])%(n+1)²`
-/

namespace A080032.P7494656667279772519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079313 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ)

end

end A080032.P7494656667279772519

/-!
# A080034: a(n) is taken to be the smallest positive integer not already present which is consistent with the condition "n is a member of the sequence if and only if a(n) is congruent to 3 mod 4".

The programs for A080034, there is no canonical definition to state claims against.
-/

/-! ## A080034.P118799144047359478

`A080033(n+1)-1`
-/

namespace A080034.P118799144047359478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080033 (n + 1) - 1

end

end A080034.P118799144047359478

/-! ## A080034.P598754335147231465

`Δ[∑[A080033(n)]-n]`
-/

namespace A080034.P598754335147231465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080034.P598754335147231465

/-! ## A080034.P15082165102491178432

`A118830(2*n+1)+A080033(n+1)`
-/

namespace A080034.P15082165102491178432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A080033 (n + 1)

end

end A080034.P15082165102491178432

/-! ## A080034.P857096901119338901

`A182394(A033299(n+1))+A080033(n+1)`
-/

namespace A080034.P857096901119338901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A033299 (n + 1)).toNat + A080033 (n + 1)

end

end A080034.P857096901119338901

/-! ## A080034.P5777485368431937688

`abs(A080033(n+1)+A033999(2*n+1))`
-/

namespace A080034.P5777485368431937688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080033 (n + 1) + A033999 (2 * n + 1)|

end

end A080034.P5777485368431937688

/-! ## A080034.P15530386890421389359

`A033999(2*n+1)+A033999(2*n)*A080033(n+1)`
-/

namespace A080034.P15530386890421389359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A080033 (n + 1)

end

end A080034.P15530386890421389359

/-! ## A080034.P2633261689654719613

`A023443(A080033(n+1))`
-/

namespace A080034.P2633261689654719613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080033 (n + 1)).toNat

end

end A080034.P2633261689654719613

/-! ## A080034.P15861122089736180414

`A289741(A045798(n+1))+A080033(n+1)`
-/

namespace A080034.P15861122089736180414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 (A045798 (n + 1)).toNat + A080033 (n + 1)

end

end A080034.P15861122089736180414

/-! ## A080034.P9352341458530398116

`A082551(A032919(n+1))+A080033(n+1)`
-/

namespace A080034.P9352341458530398116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A032919 (n + 1)).toNat + A080033 (n + 1)

end

end A080034.P9352341458530398116

/-!
# A080035: "Orderly" Friedman numbers (or "good" or "nice" Friedman numbers): Friedman numbers (A036057) where the construction digits are used in the proper order.

The programs for A080035, there is no canonical definition to state claims against.
-/

/-! ## A080035.P5361072223870986703

`A280390(A376354(n+1)+A153178(n))`
-/

namespace A080035.P5361072223870986703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280390 (A376354 (n + 1) + A153178 n).toNat

end

end A080035.P5361072223870986703

/-!
# A080036: a(n) = n + round(sqrt(2*n)) + 1.

The programs for A080036, the canonical program `A080036.P11409306155101807946` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080036 has offset 0).

The definition of A080036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+round(sqrt(2*n))+1` (program `A080036.P11409306155101807946`, by `A080036.P11409306155101807946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080036.P11409306155101807946

`n+round(sqrt(2*n))+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080036

/-- `n+round(sqrt(2*n))+1` -/
def P11409306155101807946.Spec : Prop :=
  ∀ n, P11409306155101807946.a n = A080036 n

theorem P11409306155101807946.correct : P11409306155101807946.Spec := by
  intro n
  simp only [A080036]

end A080036

/-! ## A080036.P14381233803116617966

`comp[a(n-1)+n]` with `a(0)=0, a(1)=2`
-/

namespace A080036.P14381233803116617966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080036.P14381233803116617966

namespace A080036

/-- `comp[a(n-1)+n]` -/
def P14381233803116617966.Spec : Prop :=
  ∀ n, (P14381233803116617966.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P7062994374449042877

`∪[∑[n+1], comp[∑[n]]+1]`
-/

namespace A080036.P7062994374449042877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A080036.P7062994374449042877

namespace A080036

/-- `∪[∑[n+1], comp[∑[n]]+1]` -/
def P7062994374449042877.Spec : Prop :=
  ∀ n, (P7062994374449042877.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P12697704538606260063

`∑[char[a(n-1)+n]+1]` with `a(0)=1`
-/

namespace A080036.P12697704538606260063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080036.P12697704538606260063

namespace A080036

/-- `∑[char[a(n-1)+n]+1]` -/
def P12697704538606260063.Spec : Prop :=
  ∀ n, (P12697704538606260063.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P15658465067678730712

`floor(2*n+1-(n-1)*(n-2)/a(n-1))` with `a(0)=1`
-/

namespace A080036.P15658465067678730712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n + 1 : ℚ) - ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A080036.P15658465067678730712

namespace A080036

/-- `floor(2*n+1-(n-1)*(n-2)/a(n-1))` -/
def P15658465067678730712.Spec : Prop :=
  ∀ n, P15658465067678730712.a n = A080036 n

end A080036

/-! ## A080036.P5605811668560562949

`∑[char[A000124(n)]+1]`
-/

namespace A080036.P5605811668560562949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080036.P5605811668560562949

namespace A080036

/-- `∑[char[A000124(n)]+1]` -/
def P5605811668560562949.Spec : Prop :=
  ∀ n, (P5605811668560562949.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P3714079231423613148

`record[A066181(n+1)]`
-/

namespace A080036.P3714079231423613148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080036.P3714079231423613148

namespace A080036

/-- `record[A066181(n+1)]` -/
def P3714079231423613148.Spec : Prop :=
  ∀ n, P3714079231423613148.a n = A080036 n

end A080036

/-! ## A080036.P17375271166245490581

`record[(n+1)^(1-char[∑[n]])]`
-/

namespace A080036.P17375271166245490581
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080036.P17375271166245490581

namespace A080036

/-- `record[(n+1)^(1-char[∑[n]])]` -/
def P17375271166245490581.Spec : Prop :=
  ∀ n, P17375271166245490581.a n = (A080036 n : ℚ)

end A080036

/-! ## A080036.P1994714814488011338

`lt[char[∑[char[1]+n]], 1]`
-/

namespace A080036.P1994714814488011338
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f5 j) n

end

end A080036.P1994714814488011338

namespace A080036

/-- `lt[char[∑[char[1]+n]], 1]` -/
def P1994714814488011338.Spec : Prop :=
  ∀ n, (P1994714814488011338.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P2552423082584834285

`eq[1, char[char[∑[n+1]]+n+1]]`
-/

namespace A080036.P2552423082584834285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080036.P2552423082584834285

namespace A080036

/-- `eq[1, char[char[∑[n+1]]+n+1]]` -/
def P2552423082584834285.Spec : Prop :=
  ∀ n, (P2552423082584834285.a n : ℤ) = A080036 n

end A080036

/-! ## A080036.P12754791868627297709

`A002024(A119713(n)+2*n+1)`
-/

namespace A080036.P12754791868627297709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119713 n + (2 * n + 1 : ℤ)).toNat

end

end A080036.P12754791868627297709

namespace A080036

/-- `A002024(A119713(n)+2*n+1)` -/
def P12754791868627297709.Spec : Prop :=
  ∀ n, P12754791868627297709.a n = A080036 n

end A080036

/-! ## A080036.P13638647769594838249

`A002024(A000217(A123578(n)+n+1))`
-/

namespace A080036.P13638647769594838249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000217 (A123578 n + (n + 1 : ℤ)).toNat).toNat

end

end A080036.P13638647769594838249

namespace A080036

/-- `A002024(A000217(A123578(n)+n+1))` -/
def P13638647769594838249.Spec : Prop :=
  ∀ n, P13638647769594838249.a n = A080036 n

end A080036

/-! ## A080036.P13142299827748254641

`A361020(A030130(n+1))`
-/

namespace A080036.P13142299827748254641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A030130 (n + 1)).toNat

end

end A080036.P13142299827748254641

namespace A080036

/-- `A361020(A030130(n+1))` -/
def P13142299827748254641.Spec : Prop :=
  ∀ n, P13142299827748254641.a n = A080036 n

end A080036

/-!
# A080037: a(0)=2; for n > 0, a(n) = n + floor(sqrt(4n-3)) + 2.

The programs for A080037, the canonical program `A080037.P7803047585790766488` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080037 has offset 0).

The definition of A080037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080037.P5982155691516894008

`comp[floor(n/acot(n/4))]`
-/

namespace A080037.P5982155691516894008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 4 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080037.P5982155691516894008

namespace A080037

/-- `comp[floor(n/acot(n/4))]` -/
def P5982155691516894008.Spec : Prop :=
  ∀ n, (P5982155691516894008.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P13423750299902927374

`comp[∑[char[2]+ceil(n/2)]]`
-/

namespace A080037.P13423750299902927374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080037.P13423750299902927374

namespace A080037

/-- `comp[∑[char[2]+ceil(n/2)]]` -/
def P13423750299902927374.Spec : Prop :=
  ∀ n, (P13423750299902927374.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P13859227128685068801

`comp[∑[∑[n%2]+1]]+2`
-/

namespace A080037.P13859227128685068801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A080037.P13859227128685068801

namespace A080037

/-- `comp[∑[∑[n%2]+1]]+2` -/
def P13859227128685068801.Spec : Prop :=
  ∀ n, (P13859227128685068801.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P8029882886545646949

`comp[∑[∑[and(1, n)]+1]]+2`
-/

namespace A080037.P8029882886545646949
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A080037.P8029882886545646949

namespace A080037

/-- `comp[∑[∑[and(1, n)]+1]]+2` -/
def P8029882886545646949.Spec : Prop :=
  ∀ n, (P8029882886545646949.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P15746783180416695812

`floor(record[sqrt(lcm(2, n))]+n+2)`
-/

namespace A080037.P15746783180416695812
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2 : ℝ)⌋

end

end A080037.P15746783180416695812

namespace A080037

/-- `floor(record[sqrt(lcm(2, n))]+n+2)` -/
def P15746783180416695812.Spec : Prop :=
  ∀ n, P15746783180416695812.a n = A080037 n

end A080037

/-! ## A080037.P18418778957522938633

`ceil((sqrt(n)+1)²)+floor(acot(n))`
-/

namespace A080037.P18418778957522938633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n : ℝ) + 1) ^ 2⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A080037.P18418778957522938633

namespace A080037

/-- `ceil((sqrt(n)+1)²)+floor(acot(n))` -/
def P18418778957522938633.Spec : Prop :=
  ∀ n, P18418778957522938633.a n = A080037 n

end A080037

/-! ## A080037.P5106013885735189693

`ceil((sqrt(n)+1)²)*ceil(acot(n))`
-/

namespace A080037.P5106013885735189693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n : ℝ) + 1) ^ 2⌉ * ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A080037.P5106013885735189693

namespace A080037

/-- `ceil((sqrt(n)+1)²)*ceil(acot(n))` -/
def P5106013885735189693.Spec : Prop :=
  ∀ n, P5106013885735189693.a n = A080037 n

end A080037

/-! ## A080037.P9348613951157510267

`comp[∑[a(n-2)+1]]+2` with `a(0)=1, a(1)=2`
-/

namespace A080037.P9348613951157510267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A080037.P9348613951157510267

namespace A080037

/-- `comp[∑[a(n-2)+1]]+2` -/
def P9348613951157510267.Spec : Prop :=
  ∀ n, (P9348613951157510267.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P15424183469051800382

`ceil((sqrt(n)+1)²)+C(2, n+2)`
-/

namespace A080037.P15424183469051800382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n : ℝ) + 1) ^ 2⌉ + (Nat.choose 2 (n + 2) : ℤ)

end

end A080037.P15424183469051800382

namespace A080037

/-- `ceil((sqrt(n)+1)²)+C(2, n+2)` -/
def P15424183469051800382.Spec : Prop :=
  ∀ n, P15424183469051800382.a n = A080037 n

end A080037

/-! ## A080037.P14580331919504440541

`comp[A024206(n+2)]+2`
-/

namespace A080037.P14580331919504440541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A080037.P14580331919504440541

namespace A080037

/-- `comp[A024206(n+2)]+2` -/
def P14580331919504440541.Spec : Prop :=
  ∀ n, (P14580331919504440541.a n : ℤ) = A080037 n

end A080037

/-! ## A080037.P16992876470778859224

`A267635(n)+A183866(n+1)`
-/

namespace A080037.P16992876470778859224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n + A183866 (n + 1)

end

end A080037.P16992876470778859224

namespace A080037

/-- `A267635(n)+A183866(n+1)` -/
def P16992876470778859224.Spec : Prop :=
  ∀ n, P16992876470778859224.a n = A080037 n

end A080037

/-! ## A080037.P7803047585790766488

`A049068(n+1)-A240025(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080037

/-- `A049068(n+1)-A240025(n)` -/
def P7803047585790766488.Spec : Prop :=
  ∀ n, P7803047585790766488.a n = A080037 n

theorem P7803047585790766488.correct : P7803047585790766488.Spec := by
  intro n
  simp only [A080037]

end A080037

/-! ## A080037.P4173045369018918810

`A135668(A000194(A028391(n))+n+1)`
-/

namespace A080037.P4173045369018918810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (A000194 (A028391 n).toNat + (n + 1 : ℤ)).toNat

end

end A080037.P4173045369018918810

namespace A080037

/-- `A135668(A000194(A028391(n))+n+1)` -/
def P4173045369018918810.Spec : Prop :=
  ∀ n, P4173045369018918810.a n = A080037 n

end A080037

/-! ## A080037.P4682624982387149144

`A135668(A000194(A056847(n))+n+1)`
-/

namespace A080037.P4682624982387149144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (A000194 (A056847 n).toNat + (n + 1 : ℤ)).toNat

end

end A080037.P4682624982387149144

namespace A080037

/-- `A135668(A000194(A056847(n))+n+1)` -/
def P4682624982387149144.Spec : Prop :=
  ∀ n, P4682624982387149144.a n = A080037 n

end A080037

/-! ## A080037.P6158192316580544167

`A135668(∪[A135668(n+1), A001972(n)²])`
-/

namespace A080037.P6158192316580544167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A080037.P6158192316580544167

namespace A080037

/-- `A135668(∪[A135668(n+1), A001972(n)²])` -/
def P6158192316580544167.Spec : Prop :=
  ∀ n, P6158192316580544167.a n = A080037 n

end A080037

/-! ## A080037.P6464853068345038931

`A135668(∪[A135668(n+1), A005705(n)²])`
-/

namespace A080037.P6464853068345038931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005705 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A080037.P6464853068345038931

namespace A080037

/-- `A135668(∪[A135668(n+1), A005705(n)²])` -/
def P6464853068345038931.Spec : Prop :=
  ∀ n, P6464853068345038931.a n = A080037 n

end A080037

/-! ## A080037.P11231006545691201386

`A135668(∪[A135668(n+1), A008486(n)²])`
-/

namespace A080037.P11231006545691201386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A080037.P11231006545691201386

namespace A080037

/-- `A135668(∪[A135668(n+1), A008486(n)²])` -/
def P11231006545691201386.Spec : Prop :=
  ∀ n, P11231006545691201386.a n = A080037 n

end A080037

/-! ## A080037.P957967868344346500

`A135668(∪[A135668(n+1), A008813(n)²])`
-/

namespace A080037.P957967868344346500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008813 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135668 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A080037.P957967868344346500

namespace A080037

/-- `A135668(∪[A135668(n+1), A008813(n)²])` -/
def P957967868344346500.Spec : Prop :=
  ∀ n, P957967868344346500.a n = A080037 n

end A080037

/-! ## A080037.P17210944873451044335

`A000037(A000037(n+1))-A240025(n)`
-/

namespace A080037.P17210944873451044335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A000037 (n + 1)).toNat - A240025 n

end

end A080037.P17210944873451044335

namespace A080037

/-- `A000037(A000037(n+1))-A240025(n)` -/
def P17210944873451044335.Spec : Prop :=
  ∀ n, P17210944873451044335.a n = A080037 n

end A080037

/-! ## A080037.P4430072345862800216

`A000267(a(n-1))+n` with `a(0)=2`
-/

namespace A080037.P4430072345862800216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000267 (a (n - 1)).toNat + (n : ℤ)

end

end A080037.P4430072345862800216

namespace A080037

/-- `A000267(a(n-1))+n` -/
def P4430072345862800216.Spec : Prop :=
  ∀ n, P4430072345862800216.a n = A080037 n

end A080037

/-!
# A080038: Start with a(1)=3; apply 3 -> 343, 4 -> 3443; iterate.

The programs for A080038, there is no canonical definition to state claims against.
-/

/-! ## A080038.P15988088826449810157

`Δ[A080753(n+1)]`
-/

namespace A080038.P15988088826449810157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080038.P15988088826449810157

/-! ## A080038.P6704161956809844460

`Δ[A284941(n+1)]+2`
-/

namespace A080038.P6704161956809844460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A080038.P6704161956809844460

/-! ## A080038.P5129978228524056994

`Δ[A285375(n+1)]+2`
-/

namespace A080038.P5129978228524056994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A080038.P5129978228524056994

/-! ## A080038.P16180856662235332950

`A080753(n+2)-A080753(n+1)`
-/

namespace A080038.P16180856662235332950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080753 (n + 2) - A080753 (n + 1)

end

end A080038.P16180856662235332950

/-! ## A080038.P1784559174542220500

`A133621(A284941(n+2)%A284941(n+1))`
-/

namespace A080038.P1784559174542220500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133621 (Int.tmod (A284941 (n + 2)) (A284941 (n + 1))).toNat

end

end A080038.P1784559174542220500

/-! ## A080038.P10891741495469245925

`4-A284939(A284931(n+1))`
-/

namespace A080038.P10891741495469245925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A284939 (A284931 (n + 1)).toNat

end

end A080038.P10891741495469245925

/-!
# A080039: a(n) = floor((1+sqrt(2))^n).

The programs for A080039, the canonical program `A080039.P5257670102986030557` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080039 has offset 0).

The definition of A080039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080039.P15031381293942374359

`ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A080039.P15031381293942374359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, -2, -2, 2, 1] n

end

end A080039.P15031381293942374359

namespace A080039

/-- `ogf((1-x^2+2x^3)/(1-2x-2x^2+2x^3+x^4))` -/
def P15031381293942374359.Spec : Prop :=
  ∀ n, P15031381293942374359.a n = A080039 n

end A080039

/-! ## A080039.P5257670102986030557

`xor(3, 2*a(n-1)+a(n-2)+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080039

/-- `xor(3, 2*a(n-1)+a(n-2)+1)` -/
def P5257670102986030557.Spec : Prop :=
  ∀ n, (P5257670102986030557.a n : ℤ) = A080039 n

theorem P5257670102986030557.correct : P5257670102986030557.Spec := by
  intro n
  simp only [A080039]

end A080039

/-! ## A080039.P4540246928093784556

`a(n-2)+2*(a(n-1)+n%2)` with `a(0)=1, a(1)=2`
-/

namespace A080039.P4540246928093784556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + n % 2)

end

end A080039.P4540246928093784556

namespace A080039

/-- `a(n-2)+2*(a(n-1)+n%2)` -/
def P4540246928093784556.Spec : Prop :=
  ∀ n, (P4540246928093784556.a n : ℤ) = A080039 n

end A080039

/-! ## A080039.P7856560292128187352

`A100227(n)+and(1, n)`
-/

namespace A080039.P7856560292128187352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + (Nat.land 1 n : ℤ)

end

end A080039.P7856560292128187352

namespace A080039

/-- `A100227(n)+and(1, n)` -/
def P7856560292128187352.Spec : Prop :=
  ∀ n, P7856560292128187352.a n = A080039 n

end A080039

/-! ## A080039.P3186506903821808514

`A182143(n)-and(1, n)`
-/

namespace A080039.P3186506903821808514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n - (Nat.land 1 n : ℤ)

end

end A080039.P3186506903821808514

namespace A080039

/-- `A182143(n)-and(1, n)` -/
def P3186506903821808514.Spec : Prop :=
  ∀ n, P3186506903821808514.a n = A080039 n

end A080039

/-! ## A080039.P951472905047809465

`A002203(n)-char[2*n]`
-/

namespace A080039.P951472905047809465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080039.P951472905047809465

namespace A080039

/-- `A002203(n)-char[2*n]` -/
def P951472905047809465.Spec : Prop :=
  ∀ n, P951472905047809465.a n = A080039 n

end A080039

/-! ## A080039.P15623259828776669947

`abs(2-A124696(n))+1-char[2*n]`
-/

namespace A080039.P15623259828776669947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A124696 n| + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080039.P15623259828776669947

namespace A080039

/-- `abs(2-A124696(n))+1-char[2*n]` -/
def P15623259828776669947.Spec : Prop :=
  ∀ n, P15623259828776669947.a n = A080039 n

end A080039

/-! ## A080039.P3601728371285285775

`A100227(n)+A000035(n)`
-/

namespace A080039.P3601728371285285775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + A000035 n

end

end A080039.P3601728371285285775

namespace A080039

/-- `A100227(n)+A000035(n)` -/
def P3601728371285285775.Spec : Prop :=
  ∀ n, P3601728371285285775.a n = A080039 n

end A080039

/-! ## A080039.P7899951154146959845

`A182143(n)-A000035(n)`
-/

namespace A080039.P7899951154146959845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n - A000035 n

end

end A080039.P7899951154146959845

namespace A080039

/-- `A182143(n)-A000035(n)` -/
def P7899951154146959845.Spec : Prop :=
  ∀ n, P7899951154146959845.a n = A080039 n

end A080039

/-! ## A080039.P8091766536381031615

`A124696(n)-A134451(n)`
-/

namespace A080039.P8091766536381031615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 n - A134451 n

end

end A080039.P8091766536381031615

namespace A080039

/-- `A124696(n)-A134451(n)` -/
def P8091766536381031615.Spec : Prop :=
  ∀ n, P8091766536381031615.a n = A080039 n

end A080039

/-! ## A080039.P13493362293558619816

`xor(A010693(n), A051927(n))`
-/

namespace A080039.P13493362293558619816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010693 n) (A051927 n)

end

end A080039.P13493362293558619816

namespace A080039

/-- `xor(A010693(n), A051927(n))` -/
def P13493362293558619816.Spec : Prop :=
  ∀ n, P13493362293558619816.a n = A080039 n

end A080039

/-! ## A080039.P13271215093712142280

`xor(A010674(n), A100227(n))`
-/

namespace A080039.P13271215093712142280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A100227 n)

end

end A080039.P13271215093712142280

namespace A080039

/-- `xor(A010674(n), A100227(n))` -/
def P13271215093712142280.Spec : Prop :=
  ∀ n, P13271215093712142280.a n = A080039 n

end A080039

/-! ## A080039.P2698617667027499803

`A100227(n)+Δ[A004526(n)]`
-/

namespace A080039.P2698617667027499803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + (f1 (n + 1) - f1 n)

end

end A080039.P2698617667027499803

namespace A080039

/-- `A100227(n)+Δ[A004526(n)]` -/
def P2698617667027499803.Spec : Prop :=
  ∀ n, P2698617667027499803.a n = A080039 n

end A080039

/-! ## A080039.P99409390371398180

`A097076(n)+A033539(n+1)`
-/

namespace A080039.P99409390371398180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n + A033539 (n + 1)

end

end A080039.P99409390371398180

namespace A080039

/-- `A097076(n)+A033539(n+1)` -/
def P99409390371398180.Spec : Prop :=
  ∀ n, P99409390371398180.a n = A080039 n

end A080039

/-! ## A080039.P6351320993974186099

`A051927(n)-A168361(n+1)`
-/

namespace A080039.P6351320993974186099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 n - A168361 (n + 1)

end

end A080039.P6351320993974186099

namespace A080039

/-- `A051927(n)-A168361(n+1)` -/
def P6351320993974186099.Spec : Prop :=
  ∀ n, P6351320993974186099.a n = A080039 n

end A080039

/-! ## A080039.P6006167522118647495

`A000034(n)+A002203(n)-2`
-/

namespace A080039.P6006167522118647495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A002203 n - 2)

end

end A080039.P6006167522118647495

namespace A080039

/-- `A000034(n)+A002203(n)-2` -/
def P6006167522118647495.Spec : Prop :=
  ∀ n, P6006167522118647495.a n = A080039 n

end A080039

/-! ## A080039.P15166385761213515413

`A100227(n)+A010673(n)/2`
-/

namespace A080039.P15166385761213515413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100227 n : ℚ) + (A010673 n : ℚ) / 2

end

end A080039.P15166385761213515413

namespace A080039

/-- `A100227(n)+A010673(n)/2` -/
def P15166385761213515413.Spec : Prop :=
  ∀ n, P15166385761213515413.a n = (A080039 n : ℚ)

end A080039

/-! ## A080039.P589882606374851398

`A182143(n)-A010673(n)/2`
-/

namespace A080039.P589882606374851398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182143 n : ℚ) - (A010673 n : ℚ) / 2

end

end A080039.P589882606374851398

namespace A080039

/-- `A182143(n)-A010673(n)/2` -/
def P589882606374851398.Spec : Prop :=
  ∀ n, P589882606374851398.a n = (A080039 n : ℚ)

end A080039

/-! ## A080039.P11100244136565770277

`2*A001333(n)-A056594(n)²`
-/

namespace A080039.P11100244136565770277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n - A056594 n ^ 2

end

end A080039.P11100244136565770277

namespace A080039

/-- `2*A001333(n)-A056594(n)²` -/
def P11100244136565770277.Spec : Prop :=
  ∀ n, P11100244136565770277.a n = A080039 n

end A080039

/-! ## A080039.P9746467587599252626

`2*A002965(2*n+1)-A003815(2*n+1)`
-/

namespace A080039.P9746467587599252626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 (2 * n + 1) - A003815 (2 * n + 1)

end

end A080039.P9746467587599252626

namespace A080039

/-- `2*A002965(2*n+1)-A003815(2*n+1)` -/
def P9746467587599252626.Spec : Prop :=
  ∀ n, P9746467587599252626.a n = A080039 n

end A080039

/-!
# A080040: a(n) = 2*a(n-1) + 2*a(n-2) for n > 1; a(0)=2, a(1)=2.

The programs for A080040, the canonical program `A080040.P13554563392356567984` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080040 has offset 0).

The definition of A080040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)` (program `A080040.P13554563392356567984`, by `A080040.P13554563392356567984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080040.P13554563392356567984

`2*a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080040

/-- `2*a(n-1)+2*a(n-2)` -/
def P13554563392356567984.Spec : Prop :=
  ∀ n, (P13554563392356567984.a n : ℤ) = A080040 n

theorem P13554563392356567984.correct : P13554563392356567984.Spec := by
  intro n
  simp only [A080040]

end A080040

/-! ## A080040.P8830346661368973750

`2*A026150(n)`
-/

namespace A080040.P8830346661368973750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026150 n

end

end A080040.P8830346661368973750

namespace A080040

/-- `2*A026150(n)` -/
def P8830346661368973750.Spec : Prop :=
  ∀ n, P8830346661368973750.a n = A080040 n

end A080040

/-! ## A080040.P6246981734242103439

`2*2^floor(n/2)*A002531(n)`
-/

namespace A080040.P6246981734242103439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A002531 n : ℚ)

end

end A080040.P6246981734242103439

namespace A080040

/-- `2*2^floor(n/2)*A002531(n)` -/
def P6246981734242103439.Spec : Prop :=
  ∀ n, P6246981734242103439.a n = (A080040 n : ℚ)

end A080040

/-! ## A080040.P15505492835041011554

`ogf((-2+2x)/(-1+2x+2x^2))`
-/

namespace A080040.P15505492835041011554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -2, -2] n

end

end A080040.P15505492835041011554

namespace A080040

/-- `ogf((-2+2x)/(-1+2x+2x^2))` -/
def P15505492835041011554.Spec : Prop :=
  ∀ n, P15505492835041011554.a n = A080040 n

end A080040

/-! ## A080040.P9093818232368735500

`2*(a(n-1)+a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A080040.P9093818232368735500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2))

end

end A080040.P9093818232368735500

namespace A080040

/-- `2*(a(n-1)+a(n-2))` -/
def P9093818232368735500.Spec : Prop :=
  ∀ n, (P9093818232368735500.a n : ℤ) = A080040 n

theorem P9093818232368735500.correct : P9093818232368735500.Spec := by
  intro n
  simp only [A080040, Nat.add_sub_cancel, A080040.P9093818232368735500.a, A080040.P13554563392356567984.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A080040

/-! ## A080040.P11728356736277472651

`(1+sqrt(3))^n+(1-sqrt(3))^n`
-/

namespace A080040.P11728356736277472651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (3 : ℝ)) ^ n + (1 - Real.sqrt (3 : ℝ)) ^ n

end

end A080040.P11728356736277472651

namespace A080040

/-- `(1+sqrt(3))^n+(1-sqrt(3))^n` -/
def P11728356736277472651.Spec : Prop :=
  ∀ n, P11728356736277472651.a n = (A080040 n : ℝ)

theorem P11728356736277472651.correct : P11728356736277472651.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A080040, Nat.add_sub_cancel, A080040.P11728356736277472651.a, A080040.P13554563392356567984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A080040, Nat.add_sub_cancel, A080040.P11728356736277472651.a, A080040.P13554563392356567984.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080040

/-! ## A080040.P13546730900314104413

`2*(a(n-1)-floor(-a(n-2)))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A080040.P13546730900314104413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A080040.P13546730900314104413

namespace A080040

/-- `2*(a(n-1)-floor(-a(n-2)))` -/
def P13546730900314104413.Spec : Prop :=
  ∀ n, P13546730900314104413.a n = A080040 n

end A080040

/-! ## A080040.P1380891723190150877

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=2, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A080040.P1380891723190150877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A080040.P1380891723190150877

namespace A080040

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P1380891723190150877.Spec : Prop :=
  ∀ n, P1380891723190150877.a n = A080040 n

end A080040

/-! ## A080040.P15101310971106846817

`2*(a(n-1)-round(-a(n-2)))` with `a(0)=2, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A080040.P15101310971106846817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A080040.P15101310971106846817

namespace A080040

/-- `2*(a(n-1)-round(-a(n-2)))` -/
def P15101310971106846817.Spec : Prop :=
  ∀ n, P15101310971106846817.a n = A080040 n

end A080040

/-! ## A080040.P4505126672324030167

`(a(n-1)+a(n-2))/(1-1/2)` with `a(0)=2, a(1)=2`
-/

namespace A080040.P4505126672324030167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A080040.P4505126672324030167

namespace A080040

/-- `(a(n-1)+a(n-2))/(1-1/2)` -/
def P4505126672324030167.Spec : Prop :=
  ∀ n, P4505126672324030167.a n = (A080040 n : ℚ)

end A080040

/-! ## A080040.P12751331490069789524

`2*Δ[A002605(n)]`
-/

namespace A080040.P12751331490069789524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A080040.P12751331490069789524

namespace A080040

/-- `2*Δ[A002605(n)]` -/
def P12751331490069789524.Spec : Prop :=
  ∀ n, P12751331490069789524.a n = A080040 n

end A080040

/-! ## A080040.P6368011762516236645

`2*A160572(Δ[n²])`
-/

namespace A080040.P6368011762516236645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A080040.P6368011762516236645

namespace A080040

/-- `2*A160572(Δ[n²])` -/
def P6368011762516236645.Spec : Prop :=
  ∀ n, P6368011762516236645.a n = A080040 n

end A080040

/-! ## A080040.P8795344233274158484

`2*round(A080041(n)/2)`
-/

namespace A080040.P8795344233274158484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A080041 n : ℚ) / 2)

end

end A080040.P8795344233274158484

namespace A080040

/-- `2*round(A080041(n)/2)` -/
def P8795344233274158484.Spec : Prop :=
  ∀ n, P8795344233274158484.a n = A080040 n

end A080040

/-! ## A080040.P12075561489320767028

`2*A160444(2*(n+1))`
-/

namespace A080040.P12075561489320767028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160444 (2 * (n + 1))

end

end A080040.P12075561489320767028

namespace A080040

/-- `2*A160444(2*(n+1))` -/
def P12075561489320767028.Spec : Prop :=
  ∀ n, P12075561489320767028.a n = A080040 n

end A080040

/-! ## A080040.P8484939057652251829

`A002531(n)*A016116(n+2)`
-/

namespace A080040.P8484939057652251829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n * A016116 (n + 2)

end

end A080040.P8484939057652251829

namespace A080040

/-- `A002531(n)*A016116(n+2)` -/
def P8484939057652251829.Spec : Prop :=
  ∀ n, P8484939057652251829.a n = A080040 n

end A080040

/-! ## A080040.P9091080009246172719

`2*(A005666(n)-A108898(n))`
-/

namespace A080040.P9091080009246172719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005666 n - A108898 n)

end

end A080040.P9091080009246172719

namespace A080040

/-- `2*(A005666(n)-A108898(n))` -/
def P9091080009246172719.Spec : Prop :=
  ∀ n, P9091080009246172719.a n = A080040 n

end A080040

/-! ## A080040.P7417423311514195678

`2*A002531(n)*A016116(n)`
-/

namespace A080040.P7417423311514195678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002531 n * A016116 n)

end

end A080040.P7417423311514195678

namespace A080040

/-- `2*A002531(n)*A016116(n)` -/
def P7417423311514195678.Spec : Prop :=
  ∀ n, P7417423311514195678.a n = A080040 n

end A080040

/-! ## A080040.P8933879679651838817

`2*(A002605(n+1)-A002605(n))`
-/

namespace A080040.P8933879679651838817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002605 (n + 1) - A002605 n)

end

end A080040.P8933879679651838817

namespace A080040

/-- `2*(A002605(n+1)-A002605(n))` -/
def P8933879679651838817.Spec : Prop :=
  ∀ n, P8933879679651838817.a n = A080040 n

end A080040

/-! ## A080040.P1996375103029170060

`Δ[A108898(n)]`
-/

namespace A080040.P1996375103029170060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080040.P1996375103029170060

namespace A080040

/-- `Δ[A108898(n)]` -/
def P1996375103029170060.Spec : Prop :=
  ∀ n, P1996375103029170060.a n = A080040 n

end A080040

/-! ## A080040.P16958732787544047000

`Δ[Δ[A052948(n)]]`
-/

namespace A080040.P16958732787544047000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080040.P16958732787544047000

namespace A080040

/-- `Δ[Δ[A052948(n)]]` -/
def P16958732787544047000.Spec : Prop :=
  ∀ n, P16958732787544047000.a n = A080040 n

end A080040

/-!
# A080041: a(n) = floor((1+sqrt(3))^n).

The programs for A080041, the canonical program `A080041.P13302301843660589265` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080041 has offset 0).

The definition of A080041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080041.P13302301843660589265

`A080040(n)-(1+(-1)^n)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080041

/-- `A080040(n)-(1+(-1)^n)/2` -/
def P13302301843660589265.Spec : Prop :=
  ∀ n, P13302301843660589265.a n = (A080041 n : ℚ)

end A080041

/-! ## A080041.P9064612030409053037

`ogf((1+2x^3)/(1-2x-3x^2+2x^3+2x^4))`
-/

namespace A080041.P9064612030409053037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2] [1, -2, -3, 2, 2] n

end

end A080041.P9064612030409053037

namespace A080041

/-- `ogf((1+2x^3)/(1-2x-3x^2+2x^3+2x^4))` -/
def P9064612030409053037.Spec : Prop :=
  ∀ n, P9064612030409053037.a n = A080041 n

end A080041

/-! ## A080041.P17164826835070899391

`or(n, 2*(a(n-1)+a(n-2)))+1` with `a(0)=1, a(1)=2`
-/

namespace A080041.P17164826835070899391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor n (2 * (a (n - 1) + a (n - 2))) + 1

end

end A080041.P17164826835070899391

namespace A080041

/-- `or(n, 2*(a(n-1)+a(n-2)))+1` -/
def P17164826835070899391.Spec : Prop :=
  ∀ n, (P17164826835070899391.a n : ℤ) = A080041 n

end A080041

/-! ## A080041.P13873325197027610794

`a(n%2)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A080041.P13873325197027610794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n % 2) + 2 * (a (n - 1) + a (n - 2))

end

end A080041.P13873325197027610794

namespace A080041

/-- `a(n%2)+2*(a(n-1)+a(n-2))` -/
def P13873325197027610794.Spec : Prop :=
  ∀ n, (P13873325197027610794.a n : ℤ) = A080041 n

end A080041

/-! ## A080041.P16122695527303807904

`a(and(1, n))+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A080041.P16122695527303807904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.land 1 n) + 2 * (a (n - 1) + a (n - 2))

end

end A080041.P16122695527303807904

namespace A080041

/-- `a(and(1, n))+2*(a(n-1)+a(n-2))` -/
def P16122695527303807904.Spec : Prop :=
  ∀ n, (P16122695527303807904.a n : ℤ) = A080041 n

end A080041

/-! ## A080041.P3110286492007822509

`gcd(2, n+1)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A080041.P3110286492007822509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 (n + 1) + 2 * (a (n - 1) + a (n - 2))

end

end A080041.P3110286492007822509

namespace A080041

/-- `gcd(2, n+1)+2*(a(n-1)+a(n-2))` -/
def P3110286492007822509.Spec : Prop :=
  ∀ n, (P3110286492007822509.a n : ℤ) = A080041 n

end A080041

/-! ## A080041.P4932967502141653000

`A287594(n)-A052531(n)`
-/

namespace A080041.P4932967502141653000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287594 n - A052531 n

end

end A080041.P4932967502141653000

namespace A080041

/-- `A287594(n)-A052531(n)` -/
def P4932967502141653000.Spec : Prop :=
  ∀ n, P4932967502141653000.a n = A080041 n

end A080041

/-! ## A080041.P3921601950393156427

`A000035(n)+A080040(n)-1`
-/

namespace A080041.P3921601950393156427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A080040 n - 1)

end

end A080041.P3921601950393156427

namespace A080041

/-- `A000035(n)+A080040(n)-1` -/
def P3921601950393156427.Spec : Prop :=
  ∀ n, P3921601950393156427.a n = A080041 n

end A080041

/-! ## A080041.P11000272834429250991

`A000034(n)+A080040(n)-2`
-/

namespace A080041.P11000272834429250991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A080040 n - 2)

end

end A080041.P11000272834429250991

namespace A080041

/-- `A000034(n)+A080040(n)-2` -/
def P11000272834429250991.Spec : Prop :=
  ∀ n, P11000272834429250991.a n = A080041 n

end A080041

/-! ## A080041.P36772262952526793

`A080040(n)-A176895(2*(n+1))+1`
-/

namespace A080041.P36772262952526793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n - A176895 (2 * (n + 1)) + 1

end

end A080041.P36772262952526793

namespace A080041

/-- `A080040(n)-A176895(2*(n+1))+1` -/
def P36772262952526793.Spec : Prop :=
  ∀ n, P36772262952526793.a n = A080041 n

end A080041

/-! ## A080041.P13286303966208258859

`Δ[Δ[A052948(n)]]-A059841(n)`
-/

namespace A080041.P13286303966208258859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A059841 n

end

end A080041.P13286303966208258859

namespace A080041

/-- `Δ[Δ[A052948(n)]]-A059841(n)` -/
def P13286303966208258859.Spec : Prop :=
  ∀ n, P13286303966208258859.a n = A080041 n

end A080041

/-! ## A080041.P13833039418032869799

`floor(sqrt(A080040(2*n)))`
-/

namespace A080041.P13833039418032869799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080040 (2 * n))

end

end A080041.P13833039418032869799

namespace A080041

/-- `floor(sqrt(A080040(2*n)))` -/
def P13833039418032869799.Spec : Prop :=
  ∀ n, P13833039418032869799.a n = A080041 n

end A080041

/-! ## A080041.P15725172737180108281

`floor(A028859(2*n)/A028859(n))`
-/

namespace A080041.P15725172737180108281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028859 (2 * n) : ℚ) / (A028859 n : ℚ)⌋

end

end A080041.P15725172737180108281

namespace A080041

/-- `floor(A028859(2*n)/A028859(n))` -/
def P15725172737180108281.Spec : Prop :=
  ∀ n, P15725172737180108281.a n = A080041 n

end A080041

/-! ## A080041.P3647515041567112577

`floor(A052945(2*n)/A052945(n))`
-/

namespace A080041.P3647515041567112577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052945 (2 * n) : ℚ) / (A052945 n : ℚ)⌋

end

end A080041.P3647515041567112577

namespace A080041

/-- `floor(A052945(2*n)/A052945(n))` -/
def P3647515041567112577.Spec : Prop :=
  ∀ n, P3647515041567112577.a n = A080041 n

end A080041

/-! ## A080041.P11010004978192735977

`floor(A026150(2*n+1)/A026150(n+1))`
-/

namespace A080041.P11010004978192735977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026150 (2 * n + 1) : ℚ) / (A026150 (n + 1) : ℚ)⌋

end

end A080041.P11010004978192735977

namespace A080041

/-- `floor(A026150(2*n+1)/A026150(n+1))` -/
def P11010004978192735977.Spec : Prop :=
  ∀ n, P11010004978192735977.a n = A080041 n

end A080041

/-! ## A080041.P10901367705782629605

`floor(A080040(2*n+1)/A080040(n+1))`
-/

namespace A080041.P10901367705782629605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080040 (2 * n + 1) : ℚ) / (A080040 (n + 1) : ℚ)⌋

end

end A080041.P10901367705782629605

namespace A080041

/-- `floor(A080040(2*n+1)/A080040(n+1))` -/
def P10901367705782629605.Spec : Prop :=
  ∀ n, P10901367705782629605.a n = A080041 n

end A080041

/-! ## A080041.P219174453483504453

`floor(A155020(2*n+1)/A155020(n+1))`
-/

namespace A080041.P219174453483504453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155020 (2 * n + 1) : ℚ) / (A155020 (n + 1) : ℚ)⌋

end

end A080041.P219174453483504453

namespace A080041

/-- `floor(A155020(2*n+1)/A155020(n+1))` -/
def P219174453483504453.Spec : Prop :=
  ∀ n, P219174453483504453.a n = A080041 n

end A080041

/-! ## A080041.P5805934168430793747

`floor(A162562(2*n+1)/A162562(n+1))`
-/

namespace A080041.P5805934168430793747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162562 (2 * n + 1) : ℚ) / (A162562 (n + 1) : ℚ)⌋

end

end A080041.P5805934168430793747

namespace A080041

/-- `floor(A162562(2*n+1)/A162562(n+1))` -/
def P5805934168430793747.Spec : Prop :=
  ∀ n, P5805934168430793747.a n = A080041 n

end A080041

/-! ## A080041.P9614712745541397969

`floor(A239171(2*(n+1))/A239171(n+2))`
-/

namespace A080041.P9614712745541397969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239171 (2 * (n + 1)) : ℚ) / (A239171 (n + 2) : ℚ)⌋

end

end A080041.P9614712745541397969

namespace A080041

/-- `floor(A239171(2*(n+1))/A239171(n+2))` -/
def P9614712745541397969.Spec : Prop :=
  ∀ n, P9614712745541397969.a n = A080041 n

end A080041

/-!
# A080042: a(n) = 4*a(n-1)+3*a(n-2) for n>1, a(0)=2, a(1)=4.

The programs for A080042, the canonical program `A080042.P11704590359031019841` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080042 has offset 0).

The definition of A080042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A080042.P11704590359031019841`, by `A080042.P11704590359031019841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080042.P11704590359031019841

`4*a(n-1)+3*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080042

/-- `4*a(n-1)+3*a(n-2)` -/
def P11704590359031019841.Spec : Prop :=
  ∀ n, (P11704590359031019841.a n : ℤ) = A080042 n

theorem P11704590359031019841.correct : P11704590359031019841.Spec := by
  intro n
  simp only [A080042]

end A080042

/-! ## A080042.P17692193622042505083

`ogf((-2+4x)/(-1+4x+3x^2))`
-/

namespace A080042.P17692193622042505083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, -3] n

end

end A080042.P17692193622042505083

namespace A080042

/-- `ogf((-2+4x)/(-1+4x+3x^2))` -/
def P17692193622042505083.Spec : Prop :=
  ∀ n, P17692193622042505083.a n = A080042 n

end A080042

/-! ## A080042.P4292024870011322587

`(2+sqrt(7))^n+(2-sqrt(7))^n`
-/

namespace A080042.P4292024870011322587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + Real.sqrt (7 : ℝ)) ^ n + (2 - Real.sqrt (7 : ℝ)) ^ n

end

end A080042.P4292024870011322587

namespace A080042

/-- `(2+sqrt(7))^n+(2-sqrt(7))^n` -/
def P4292024870011322587.Spec : Prop :=
  ∀ n, P4292024870011322587.a n = (A080042 n : ℝ)

theorem P4292024870011322587.correct : P4292024870011322587.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A080042, Nat.add_sub_cancel, A080042.P4292024870011322587.a, A080042.P11704590359031019841.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A080042, Nat.add_sub_cancel, A080042.P4292024870011322587.a, A080042.P11704590359031019841.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080042

/-! ## A080042.P16537704272617903496

`2*A108851(n)`
-/

namespace A080042.P16537704272617903496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108851 n

end

end A080042.P16537704272617903496

namespace A080042

/-- `2*A108851(n)` -/
def P16537704272617903496.Spec : Prop :=
  ∀ n, P16537704272617903496.a n = A080042 n

end A080042

/-! ## A080042.P2173175004097460861

`lcm(A010694(n), A108851(n))`
-/

namespace A080042.P2173175004097460861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010694 n) (A108851 n)

end

end A080042.P2173175004097460861

namespace A080042

/-- `lcm(A010694(n), A108851(n))` -/
def P2173175004097460861.Spec : Prop :=
  ∀ n, (P2173175004097460861.a n : ℤ) = A080042 n

end A080042

/-! ## A080042.P1107292023791819779

`2*(A122558(n)-A015530(n))`
-/

namespace A080042.P1107292023791819779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122558 n - A015530 n)

end

end A080042.P1107292023791819779

namespace A080042

/-- `2*(A122558(n)-A015530(n))` -/
def P1107292023791819779.Spec : Prop :=
  ∀ n, P1107292023791819779.a n = A080042 n

end A080042

/-! ## A080042.P1213660434496430511

`2*(A126473(n)-A106570(n))`
-/

namespace A080042.P1213660434496430511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126473 n - A106570 n)

end

end A080042.P1213660434496430511

namespace A080042

/-- `2*(A126473(n)-A106570(n))` -/
def P1213660434496430511.Spec : Prop :=
  ∀ n, P1213660434496430511.a n = A080042 n

end A080042

/-! ## A080042.P15518508999426762278

`2*(A086901(n+1)+A015530(n))`
-/

namespace A080042.P15518508999426762278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086901 (n + 1) + A015530 n)

end

end A080042.P15518508999426762278

namespace A080042

/-- `2*(A086901(n+1)+A015530(n))` -/
def P15518508999426762278.Spec : Prop :=
  ∀ n, P15518508999426762278.a n = A080042 n

end A080042

/-!
# A080043: a(n)=floor((2+sqrt(7))^n).

The programs for A080043, the canonical program `A080043.P6690340171102988928` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080043 has offset 0).

The definition of A080043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080043.P3858413600148906277

`4*a(n-1)+4*a(n-2)-4*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=100`
-/

namespace A080043.P3858413600148906277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 21, 100] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3) - 3 * a (n - 4)

end

end A080043.P3858413600148906277

namespace A080043

/-- `4*a(n-1)+4*a(n-2)-4*a(n-3)-3*a(n-4)` -/
def P3858413600148906277.Spec : Prop :=
  ∀ n, P3858413600148906277.a n = A080043 n

end A080043

/-! ## A080043.P6690340171102988928

`A080042(n)-(1+(-1)^n)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080043

/-- `A080042(n)-(1+(-1)^n)/2` -/
def P6690340171102988928.Spec : Prop :=
  ∀ n, P6690340171102988928.a n = (A080043 n : ℚ)

end A080043

/-! ## A080043.P16016435958514836325

`ogf((1+x^2+4x^3)/(1-4x-4x^2+4x^3+3x^4))`
-/

namespace A080043.P16016435958514836325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 4] [1, -4, -4, 4, 3] n

end

end A080043.P16016435958514836325

namespace A080043

/-- `ogf((1+x^2+4x^3)/(1-4x-4x^2+4x^3+3x^4))` -/
def P16016435958514836325.Spec : Prop :=
  ∀ n, P16016435958514836325.a n = A080043 n

end A080043

/-! ## A080043.P5439762731011461538

`A000034(n)+A080042(n)-2`
-/

namespace A080043.P5439762731011461538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A080042 n - 2)

end

end A080043.P5439762731011461538

namespace A080043

/-- `A000034(n)+A080042(n)-2` -/
def P5439762731011461538.Spec : Prop :=
  ∀ n, P5439762731011461538.a n = A080043 n

end A080043

/-! ## A080043.P2735400823732178796

`xor(A010702(n)%4, A080042(n))`
-/

namespace A080043.P2735400823732178796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A010702 n) 4) (A080042 n)

end

end A080043.P2735400823732178796

namespace A080043

/-- `xor(A010702(n)%4, A080042(n))` -/
def P2735400823732178796.Spec : Prop :=
  ∀ n, P2735400823732178796.a n = A080043 n

end A080043

/-! ## A080043.P7898563279182285646

`A080041(n)+A080042(n)-A080040(n)`
-/

namespace A080043.P7898563279182285646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080041 n + (A080042 n - A080040 n)

end

end A080043.P7898563279182285646

namespace A080043

/-- `A080041(n)+A080042(n)-A080040(n)` -/
def P7898563279182285646.Spec : Prop :=
  ∀ n, P7898563279182285646.a n = A080043 n

end A080043

/-! ## A080043.P3401621678540440459

`floor(sqrt(A080042(2*n)))`
-/

namespace A080043.P3401621678540440459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080042 (2 * n))

end

end A080043.P3401621678540440459

namespace A080043

/-- `floor(sqrt(A080042(2*n)))` -/
def P3401621678540440459.Spec : Prop :=
  ∀ n, P3401621678540440459.a n = A080043 n

end A080043

/-! ## A080043.P9091745436955594392

`floor(sqrt(A124999(2*n)))`
-/

namespace A080043.P9091745436955594392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A124999 (2 * n))

end

end A080043.P9091745436955594392

namespace A080043

/-- `floor(sqrt(A124999(2*n)))` -/
def P9091745436955594392.Spec : Prop :=
  ∀ n, P9091745436955594392.a n = A080043 n

end A080043

/-! ## A080043.P16361585999539165941

`floor(A126473(2*n)/A126473(n))`
-/

namespace A080043.P16361585999539165941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126473 (2 * n) : ℚ) / (A126473 n : ℚ)⌋

end

end A080043.P16361585999539165941

namespace A080043

/-- `floor(A126473(2*n)/A126473(n))` -/
def P16361585999539165941.Spec : Prop :=
  ∀ n, P16361585999539165941.a n = A080043 n

end A080043

/-! ## A080043.P5165908466498950047

`floor(A080042(2*n+1)/A080042(n+1))`
-/

namespace A080043.P5165908466498950047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080042 (2 * n + 1) : ℚ) / (A080042 (n + 1) : ℚ)⌋

end

end A080043.P5165908466498950047

namespace A080043

/-- `floor(A080042(2*n+1)/A080042(n+1))` -/
def P5165908466498950047.Spec : Prop :=
  ∀ n, P5165908466498950047.a n = A080043 n

end A080043

/-!
# A080044: Numerators of triangular array: T(n,1)=T(n,n)=1/n and T(n,k)=T(n-1,k-1)+T(n-1,k), 1

The programs for A080044, there is no canonical definition to state claims against.
-/

/-! ## A080044.P1071330706542312628

`A318573(A317644(n))`
-/

namespace A080044.P1071330706542312628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A317644 n).toNat

end

end A080044.P1071330706542312628

/-!
# A080045: Denominators of triangular array: T(n,1)=T(n,n)=1/n and T(n,k)=T(n-1,k-1)+t(n-1,k), 1

The programs for A080045, there is no canonical definition to state claims against.
-/

/-! ## A080045.P10158011781061109029

`A318574(A317644(n))`
-/

namespace A080045.P10158011781061109029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A317644 n).toNat

end

end A080045.P10158011781061109029

/-! ## A080045.P15870434257785177847

`A003056(n)-A104041(A008300(n))`
-/

namespace A080045.P15870434257785177847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A104041 (A008300 n).toNat

end

end A080045.P15870434257785177847

/-! ## A080045.P16570055954062680432

`A091965(A185284(3*n+1))*A331886(n)`
-/

namespace A080045.P16570055954062680432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091965 (A185284 (3 * n + 1)).toNat * A331886 n

end

end A080045.P16570055954062680432

/-! ## A080045.P381089531996241643

`A371103(A360202(n+1))`
-/

namespace A080045.P381089531996241643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371103 (A360202 (n + 1)).toNat

end

end A080045.P381089531996241643

/-! ## A080045.P3272592046834706854

`A063775(A006130(n))*A205456(n+1)`
-/

namespace A080045.P3272592046834706854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (A006130 n).toNat * A205456 (n + 1)

end

end A080045.P3272592046834706854

/-!
# A080046: Multiplicative Pascal triangle, read by rows: T(n,1)=T(n,n)=n and T(n,k) = T(n-1,k-1) * T(n-1,k).

The programs for A080046, there is no canonical definition to state claims against.
-/

/-! ## A080046.P14756788441830220458

`A066121(n+1)*A066121(∑[char[∑[n]]]²-n)`
-/

namespace A080046.P14756788441830220458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066121 (n + 1) * A066121 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A080046.P14756788441830220458

/-! ## A080046.P2493665124183802954

`A066121(n+1)*∏{digits}[A213057(n), #]`
-/

namespace A080046.P2493665124183802954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066121 (n + 1) * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A080046.P2493665124183802954

/-! ## A080046.P2172031013203303907

`A028310(A066121(n+1)*A249026(n))`
-/

namespace A080046.P2172031013203303907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A066121 (n + 1) * A249026 n).toNat

end

end A080046.P2172031013203303907

/-! ## A080046.P37414923269523927

`A066121(A076084(n+1))*A249026(n)`
-/

namespace A080046.P37414923269523927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066121 (A076084 (n + 1)).toNat * A249026 n

end

end A080046.P37414923269523927

/-! ## A080046.P1366392422264710575

`A066121(n+1)*A137735(A249026(n)²)`
-/

namespace A080046.P1366392422264710575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066121 (n + 1) * A137735 (A249026 n ^ 2).toNat

end

end A080046.P1366392422264710575

/-!
# A080047: Operation count to create all permutations of n distinct elements using Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of times l has to be repeatedly decreased in step L3.

The programs for A080047, the canonical program `A080047.P2863748378075240159` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080047 has offset 2).

The definition of A080047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080047.P2863748378075240159

`(n+2)*a(n-1)+(n+1)*n/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080047

/-- `(n+2)*a(n-1)+(n+1)*n/2` -/
def P2863748378075240159.Spec : Prop :=
  ∀ n, P2863748378075240159.a n = (A080047 (n + 2) : ℚ)

end A080047

/-! ## A080047.P2525543496429890902

`∑[n]+(n+2)*a(n-1)` with `a(0)=0`
-/

namespace A080047.P2525543496429890902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * a (n - 1)

end

end A080047.P2525543496429890902

namespace A080047

/-- `∑[n]+(n+2)*a(n-1)` -/
def P2525543496429890902.Spec : Prop :=
  ∀ n, (P2525543496429890902.a n : ℤ) = A080047 (n + 2)

end A080047

/-! ## A080047.P2319668523110891113

`floor(C(n+1, 2)+(n+2)*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A080047.P2319668523110891113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n + 1) 2 + (n + 2) * a (n - 1)

end

end A080047.P2319668523110891113

namespace A080047

/-- `floor(C(n+1, 2)+(n+2)*a(n-1))` -/
def P2319668523110891113.Spec : Prop :=
  ∀ n, (P2319668523110891113.a n : ℤ) = A080047 (n + 2)

end A080047

/-! ## A080047.P17693943605434991129

`n²+(n+1)*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A080047.P17693943605434991129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  n ^ 2 + (n + 1) * (a (n - 1) + a (n - 2))

end

end A080047.P17693943605434991129

namespace A080047

/-- `n²+(n+1)*(a(n-1)+a(n-2))` -/
def P17693943605434991129.Spec : Prop :=
  ∀ n, (P17693943605434991129.a n : ℤ) = A080047 (n + 2)

end A080047

/-! ## A080047.P14450523648421397386

`(A224869(n+2)-n)/2`
-/

namespace A080047.P14450523648421397386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224869 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A080047.P14450523648421397386

namespace A080047

/-- `(A224869(n+2)-n)/2` -/
def P14450523648421397386.Spec : Prop :=
  ∀ n, P14450523648421397386.a n = (A080047 (n + 2) : ℚ)

end A080047

/-! ## A080047.P5162394718062027553

`∑[floor(Δ[A056542(n+1)/2])]`
-/

namespace A080047.P5162394718062027553
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056542 (n + 1) : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080047.P5162394718062027553

namespace A080047

/-- `∑[floor(Δ[A056542(n+1)/2])]` -/
def P5162394718062027553.Spec : Prop :=
  ∀ n, P5162394718062027553.a n = A080047 (n + 2)

end A080047

/-! ## A080047.P17419547461636859281

`A001489(n+2)-(A038155(n+2)-A002627(n+2))`
-/

namespace A080047.P17419547461636859281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 2) - (A038155 (n + 2) - A002627 (n + 2))

end

end A080047.P17419547461636859281

namespace A080047

/-- `A001489(n+2)-(A038155(n+2)-A002627(n+2))` -/
def P17419547461636859281.Spec : Prop :=
  ∀ n, P17419547461636859281.a n = A080047 (n + 2)

end A080047

/-!
# A080048: Operation count to create all permutations of n distinct elements using Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of loop repetitions in reversal step.

The programs for A080048, the canonical program `A080048.P4168946499302083207` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080048 has offset 2).

The definition of A080048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080048.P4168946499302083207

`(n+2)*a(n-1)+(n+1)*floor((n+3)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080048

/-- `(n+2)*a(n-1)+(n+1)*floor((n+3)/2)` -/
def P4168946499302083207.Spec : Prop :=
  ∀ n, P4168946499302083207.a n = A080048 (n + 2)

theorem P4168946499302083207.correct : P4168946499302083207.Spec := by
  intro n
  simp only [A080048, Nat.add_sub_cancel]

end A080048

/-! ## A080048.P11856623105171350805

`A001540(n+2)-A008619(n)`
-/

namespace A080048.P11856623105171350805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001540 (n + 2) - A008619 n

end

end A080048.P11856623105171350805

namespace A080048

/-- `A001540(n+2)-A008619(n)` -/
def P11856623105171350805.Spec : Prop :=
  ∀ n, P11856623105171350805.a n = A080048 (n + 2)

end A080048

/-! ## A080048.P2551292779185494433

`A001540(n+2)-(A004526(n)+1)`
-/

namespace A080048.P2551292779185494433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001540 (n + 2) - (A004526 n + 1)

end

end A080048.P2551292779185494433

namespace A080048

/-- `A001540(n+2)-(A004526(n)+1)` -/
def P2551292779185494433.Spec : Prop :=
  ∀ n, P2551292779185494433.a n = A080048 (n + 2)

end A080048

/-! ## A080048.P4449780328982384840

`A001540(n+2)-A110654(n+1)`
-/

namespace A080048.P4449780328982384840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001540 (n + 2) - A110654 (n + 1)

end

end A080048.P4449780328982384840

namespace A080048

/-- `A001540(n+2)-A110654(n+1)` -/
def P4449780328982384840.Spec : Prop :=
  ∀ n, P4449780328982384840.a n = A080048 (n + 2)

end A080048

/-! ## A080048.P4203313449526518926

`A001540(n+2)-∑[A000035(n+1)]`
-/

namespace A080048.P4203313449526518926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001540 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080048.P4203313449526518926

namespace A080048

/-- `A001540(n+2)-∑[A000035(n+1)]` -/
def P4203313449526518926.Spec : Prop :=
  ∀ n, P4203313449526518926.a n = A080048 (n + 2)

end A080048

/-! ## A080048.P11870726207585455599

`A080049(n+2)+A000142(n+2)-1`
-/

namespace A080048.P11870726207585455599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080049 (n + 2) + (A000142 (n + 2) - 1)

end

end A080048.P11870726207585455599

namespace A080048

/-- `A080049(n+2)+A000142(n+2)-1` -/
def P11870726207585455599.Spec : Prop :=
  ∀ n, P11870726207585455599.a n = A080048 (n + 2)

end A080048

/-!
# A080049: Operation count to create all permutations of n distinct elements using Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2. Sequence gives number of interchange operations in step L4.

The programs for A080049, the canonical program `A080049.P8524461409902005510` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080049 has offset 2).

The definition of A080049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080049.P8524461409902005510

`(n+2)*a(n-1)+(n+1)*floor((n+1)/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080049

/-- `(n+2)*a(n-1)+(n+1)*floor((n+1)/2)` -/
def P8524461409902005510.Spec : Prop :=
  ∀ n, P8524461409902005510.a n = A080049 (n + 2)

theorem P8524461409902005510.correct : P8524461409902005510.Spec := by
  intro n
  simp only [A080049, Nat.add_sub_cancel]

end A080049

/-! ## A080049.P1508976308027380008

`∑[(n+1)*A080227(n+1)]`
-/

namespace A080049.P1508976308027380008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080049.P1508976308027380008

namespace A080049

/-- `∑[(n+1)*A080227(n+1)]` -/
def P1508976308027380008.Spec : Prop :=
  ∀ n, P1508976308027380008.a n = A080049 (n + 2)

end A080049

/-! ## A080049.P9940194548635390354

`A080227(n+2)-A008619(n)`
-/

namespace A080049.P9940194548635390354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080227 (n + 2) - A008619 n

end

end A080049.P9940194548635390354

namespace A080049

/-- `A080227(n+2)-A008619(n)` -/
def P9940194548635390354.Spec : Prop :=
  ∀ n, P9940194548635390354.a n = A080049 (n + 2)

end A080049

/-! ## A080049.P2964475988544129557

`A080227(n+2)-A000005(abs(A320770(n)))`
-/

namespace A080049.P2964475988544129557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080227 (n + 2) - A000005 |A320770 n|.toNat

end

end A080049.P2964475988544129557

namespace A080049

/-- `A080227(n+2)-A000005(abs(A320770(n)))` -/
def P2964475988544129557.Spec : Prop :=
  ∀ n, P2964475988544129557.a n = A080049 (n + 2)

end A080049

/-!
# A080050: Primes p such that 2^p-1 and the p-th Fibonacci number have a common factor. Prime terms of A074776.

The programs for A080050, there is no canonical definition to state claims against.
-/

/-! ## A080050.P14092805205136625897

`p?[∪[A079506(n+1), A079547(n+1)]]`
-/

namespace A080050.P14092805205136625897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079506 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079547 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080050.P14092805205136625897

/-! ## A080050.P16054320175673484293

`p?[A079506(n+1)%A079505(2*n+3)]`
-/

namespace A080050.P16054320175673484293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079506 (n + 1)) (A079505 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080050.P16054320175673484293

/-! ## A080050.P18044175336946607117

`p?[∪[A074776(n+1), A079506(n+1)]]`
-/

namespace A080050.P18044175336946607117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074776 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079506 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080050.P18044175336946607117

/-!
# A080053: Exp(n) is further from an integer than any previous exp(k) for 1 <= k < n.

The programs for A080053, there is no canonical definition to state claims against.
-/

/-! ## A080053.P15897984826632083102

`eq[A093101(n), A139352(A102432(n+1))]`
-/

namespace A080053.P15897984826632083102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A102432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080053.P15897984826632083102

/-! ## A080053.P7050391677419607990

`A049988(A241470(n+2))+A010422(n+1)`
-/

namespace A080053.P7050391677419607990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (A241470 (n + 2)).toNat + A010422 (n + 1)

end

end A080053.P7050391677419607990

/-!
# A080054: G.f.: Product_{n >= 0} (1+x^(2n+1))/(1-x^(2n+1)).

The programs for A080054, there is no canonical definition to state claims against.
-/

/-! ## A080054.P11239940321780810113

`(-1)^n*A108494(n)`
-/

namespace A080054.P11239940321780810113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A108494 n

end

end A080054.P11239940321780810113

/-! ## A080054.P13952431366469690843

`(-1)^floor(n/2)*A080015(n)`
-/

namespace A080054.P13952431366469690843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A080015 n : ℚ)

end

end A080054.P13952431366469690843

/-! ## A080054.P10620093720118458622

`abs(A080015(n))`
-/

namespace A080054.P10620093720118458622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080015 n|

end

end A080054.P10620093720118458622

/-! ## A080054.P9402716869886058396

`abs(A108494(n))`
-/

namespace A080054.P9402716869886058396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108494 n|

end

end A080054.P9402716869886058396

/-! ## A080054.P6209755734645973614

`abs(A210030(n))`
-/

namespace A080054.P6209755734645973614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210030 n|

end

end A080054.P6209755734645973614

/-! ## A080054.P13573546311475372923

`A087960(n)*A210030(n)`
-/

namespace A080054.P13573546311475372923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A210030 n

end

end A080054.P13573546311475372923

/-! ## A080054.P8334261428087431789

`gcd(A000038(n), A080015(n))`
-/

namespace A080054.P8334261428087431789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080015 n)

end

end A080054.P8334261428087431789

/-! ## A080054.P14345572602878168108

`gcd(A130706(n), A210030(n))`
-/

namespace A080054.P14345572602878168108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A210030 n)

end

end A080054.P14345572602878168108

/-! ## A080054.P12820050906031967333

`lcm(A000034(n), A080015(n))`
-/

namespace A080054.P12820050906031967333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A080015 n)

end

end A080054.P12820050906031967333

/-! ## A080054.P6415938241487357183

`lcm(A001285(n), A108494(n))`
-/

namespace A080054.P6415938241487357183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A108494 n)

end

end A080054.P6415938241487357183

/-! ## A080054.P2789516944824734516

`lcm(A001468(n), A210030(n))`
-/

namespace A080054.P2789516944824734516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001468 n) (A210030 n)

end

end A080054.P2789516944824734516

/-! ## A080054.P13435398971567161751

`(2-A000007(n))*A115671(n)`
-/

namespace A080054.P13435398971567161751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A115671 n

end

end A080054.P13435398971567161751

/-! ## A080054.P410054782340745194

`abs(A020639(A001316(n))*A245432(n))`
-/

namespace A080054.P410054782340745194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020639 (A001316 n).toNat * A245432 n|

end

end A080054.P410054782340745194

/-! ## A080054.P923540909147409405

`A108494(n)/A057077(A057077(n)+n)`
-/

namespace A080054.P923540909147409405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A080054.P923540909147409405

/-! ## A080054.P12912325039404181505

`A057077(n+1)*A210030(n)`
-/

namespace A080054.P12912325039404181505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A210030 n

end

end A080054.P12912325039404181505

/-! ## A080054.P6314305472780056674

`A115671(n)/A185083(n)*A208850(n)`
-/

namespace A080054.P6314305472780056674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 n : ℚ) / (A185083 n : ℚ) * (A208850 n : ℚ)

end

end A080054.P6314305472780056674

/-! ## A080054.P3484201075074866733

`A115671(n)*A280560(2*n)`
-/

namespace A080054.P3484201075074866733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 n * A280560 (2 * n)

end

end A080054.P3484201075074866733

/-! ## A080054.P10485320291818708180

`A108494(n)/A057077(2*n)`
-/

namespace A080054.P10485320291818708180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A080054.P10485320291818708180

/-!
# A080055: Greedy powers of log(2): Sum_{n>=1} (log(2))^a(n) = 1.

The programs for A080055, there is no canonical definition to state claims against.
-/

/-! ## A080055.P12731916333438774655

`record[A260195(n)]+Δ[n²]`
-/

namespace A080055.P12731916333438774655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A080055.P12731916333438774655

/-! ## A080055.P14167573731336442931

`A005408(n)+record[A260195(n)]`
-/

namespace A080055.P14167573731336442931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080055.P14167573731336442931

/-! ## A080055.P16923656175646705258

`record[A099375(n)]+record[A260195(n)]`
-/

namespace A080055.P16923656175646705258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A080055.P16923656175646705258

/-! ## A080055.P13077641360304069508

`A014261(n+1)+record[A260195(n)]`
-/

namespace A080055.P13077641360304069508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080055.P13077641360304069508

/-! ## A080055.P6849879432567261019

`A160939(n+1)+record[A260195(n)]`
-/

namespace A080055.P6849879432567261019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080055.P6849879432567261019

/-!
# A080056: Greedy powers of (2/Pi): Sum_{n=1..inf} (2/Pi)^a(n) = 1.

The programs for A080056, there is no canonical definition to state claims against.
-/

/-! ## A080056.P1140329569338939503

`record[A265183(∑[A034867(n)])]`
-/

namespace A080056.P1140329569338939503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265183 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080056.P1140329569338939503

/-!
# A080057: Greedy powers of exp(-gamma): Sum_{n>=1} exp(-gamma)^a(n) = 1, where exp(-gamma) = exp(-.57721566490153286...) = .561459483566885169...

The programs for A080057, there is no canonical definition to state claims against.
-/

/-! ## A080057.P12584053818576326054

`∑[A241856(A147857(n+1)+A004506(3*(n+1)))]`
-/

namespace A080057.P12584053818576326054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241856 (A147857 (n + 1) + A004506 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080057.P12584053818576326054

/-!
# A080061: Triangle of coefficients of polynomials P(n; x) = Permanent(M), where M=[m(i,j)] is n X n matrix defined by m(i,j)=x if 0<=i-j<=2 else m(i,j)=1.

The programs for A080061, there is no canonical definition to state claims against.
-/

/-! ## A080061.P2745035552524724674

`gcd(A135814(A132623(n)), A221542(n+1))`
-/

namespace A080061.P2745035552524724674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135814 (A132623 n).toNat) (A221542 (n + 1))

end

end A080061.P2745035552524724674

/-! ## A080061.P681431084927926127

`A325392(∑{d}[A337217(n+1), #])`
-/

namespace A080061.P681431084927926127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325392 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A080061.P681431084927926127

/-! ## A080061.P11199798076289455971

`A215771(n)+A055641(A041008(n))`
-/

namespace A080061.P11199798076289455971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215771 n + A055641 (A041008 n).toNat

end

end A080061.P11199798076289455971

/-! ## A080061.P5450918784166842345

`and(A228141(3*n+2), A353698(A153363(n+1)))`
-/

namespace A080061.P5450918784166842345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228141 (3 * n + 2)) (A353698 (A153363 (n + 1)).toNat)

end

end A080061.P5450918784166842345

/-! ## A080061.P2885726068963524654

`A327517(A082473(n+1))`
-/

namespace A080061.P2885726068963524654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327517 (A082473 (n + 1)).toNat

end

end A080061.P2885726068963524654

/-!
# A080062: Composite numbers n such that for all primes p dividing n, p-1 divides n-1.

The programs for A080062, there is no canonical definition to state claims against.
-/

/-! ## A080062.P1190083008779212087

`∪[A020707(n), A225498(n+1)]`
-/

namespace A080062.P1190083008779212087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P1190083008779212087

/-! ## A080062.P6891832245064191750

`∪[A100391(n+1), A225498(n+1)]`
-/

namespace A080062.P6891832245064191750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P6891832245064191750

/-! ## A080062.P5096396828077448497

`∪[A225498(n+1), A246067(n+1)]`
-/

namespace A080062.P5096396828077448497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P5096396828077448497

/-! ## A080062.P16088158122632443834

`∪[A225498(n+1), A257278(n+1)]`
-/

namespace A080062.P16088158122632443834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P16088158122632443834

/-! ## A080062.P13270321158427200509

`∪[A087442(n+1), A025475(n+2)]`
-/

namespace A080062.P13270321158427200509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P13270321158427200509

/-! ## A080062.P17368228223555154497

`∪[A225498(n+1), A340093(n+1)]`
-/

namespace A080062.P17368228223555154497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P17368228223555154497

/-! ## A080062.P18053599841237380151

`filter[A087441(n+1), A066247(#)]`
-/

namespace A080062.P18053599841237380151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A080062.P18053599841237380151

/-! ## A080062.P16422925702791060392

`eq[A066247(n+1), A324290(n+1)]+1`
-/

namespace A080062.P16422925702791060392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080062.P16422925702791060392

/-! ## A080062.P5142413326331645200

`∩[A002808(n+1), A087441(n+1)]`
-/

namespace A080062.P5142413326331645200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P5142413326331645200

/-! ## A080062.P9937065772324374983

`filter[A379271(n+1), A324290(#)]`
-/

namespace A080062.P9937065772324374983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A080062.P9937065772324374983

/-! ## A080062.P2640094659978069693

`∩[A087441(n+1), A379271(n+1)]`
-/

namespace A080062.P2640094659978069693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080062.P2640094659978069693

/-!
# A080063: a(n) = n mod (spf(n)+1), where spf(n) is the smallest prime dividing n (A020639).

The programs for A080063, there is no canonical definition to state claims against.
-/

/-! ## A080063.P2380010562219951782

`(n+1)%(A020639(n+1)+1)`
-/

namespace A080063.P2380010562219951782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (n + 1) + 1)

end

end A080063.P2380010562219951782

/-! ## A080063.P12177251648319925683

`abs(xor(n, -1))%(A057237(n+1)+2)`
-/

namespace A080063.P12177251648319925683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |Int.xor (n : ℤ) (-1)| (A057237 (n + 1) + 2)

end

end A080063.P12177251648319925683

/-! ## A080063.P5223069642563380110

`-xor(n, -1)%(A074828(n+1)+1)`
-/

namespace A080063.P5223069642563380110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-Int.xor (n : ℤ) (-1)) (A074828 (n + 1) + 1)

end

end A080063.P5223069642563380110

/-! ## A080063.P8624345045552762813

`C(n+1, n)%(sqrt(A088377(n+1))+1)`
-/

namespace A080063.P8624345045552762813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 1) n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A088377 (n + 1) : ℝ) + 1))

end

end A080063.P8624345045552762813

/-! ## A080063.P2733437544306472274

`(n+1)%A028815(A055396(n+1))`
-/

namespace A080063.P2733437544306472274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A028815 (A055396 (n + 1)).toNat)

end

end A080063.P2733437544306472274

/-!
# A080064: Numbers n such that n == 1 modulo (spf(n)+1), where spf(m) is the smallest prime dividing m (A020639).

The programs for A080064, there is no canonical definition to state claims against.
-/

/-! ## A080064.P7395803106956969833

`eq[0, n%(A020639(n+1)+1)]+1`
-/

namespace A080064.P7395803106956969833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020639 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080064.P7395803106956969833

/-! ## A080064.P2727321595701716016

`eq[1, (n+1)%(A074828(n+1)+1)]+1`
-/

namespace A080064.P2727321595701716016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A074828 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080064.P2727321595701716016

/-! ## A080064.P9624809241663408468

`record[gcd(n+2, A083218(n+1))]`
-/

namespace A080064.P9624809241663408468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A083218 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080064.P9624809241663408468

/-! ## A080064.P12169460965513650099

`record[(n+1)²%(A032742(n+1)+n+1)]`
-/

namespace A080064.P12169460965513650099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A032742 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080064.P12169460965513650099

/-! ## A080064.P654897451614111918

`eq[1, n%(A063918(A028310(n))+1)]`
-/

namespace A080064.P654897451614111918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A063918 (A028310 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080064.P654897451614111918

/-! ## A080064.P1540401818299921718

`record[A136181(n+2)²%A136195(n+2)]`
-/

namespace A080064.P1540401818299921718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136181 (n + 2) ^ 2) (A136195 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080064.P1540401818299921718

/-!
# A080065: Numbers n such that n == 3 modulo (spf(n)+1), where spf(m) is the smallest prime dividing m (A020639).

The programs for A080065, there is no canonical definition to state claims against.
-/

/-! ## A080065.P15569613867185268763

`eq[3, (n+1)%(A020639(n+1)+1)]+1`
-/

namespace A080065.P15569613867185268763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080065.P15569613867185268763

/-! ## A080065.P12884013372093822574

`eq[A083218(n+1), A102457(n+2)]+2`
-/

namespace A080065.P12884013372093822574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080065.P12884013372093822574

/-! ## A080065.P13894417348064355994

`∩[A103543(n+1), A366849(n+1)]`
-/

namespace A080065.P13894417348064355994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080065.P13894417348064355994

/-! ## A080065.P14139034195643670225

`∩[A254311(n+1), A366849(n+1)]`
-/

namespace A080065.P14139034195643670225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080065.P14139034195643670225

/-! ## A080065.P7844295004211272327

`∩[A350395(n+1), A366849(n+1)]`
-/

namespace A080065.P7844295004211272327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080065.P7844295004211272327

/-!
# A080066: First differences of A000966 (number of zeros that n! will never end in).

The programs for A080066, the canonical program `A080066.P16360937105414831017` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080066 has offset 1).

The definition of A080066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080066.P16360937105414831017

`A000966(n+2)-A000966(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080066

/-- `A000966(n+2)-A000966(n+1)` -/
def P16360937105414831017.Spec : Prop :=
  ∀ n, P16360937105414831017.a n = A080066 (n + 1)

theorem P16360937105414831017.correct : P16360937105414831017.Spec := by
  intro n
  simp only [A080066, Nat.add_sub_cancel]

end A080066

/-! ## A080066.P12082726607144449891

`Δ[comp[a(floor(n/5))+n]]` with `a(0)=0`
-/

namespace A080066.P12082726607144449891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 5⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A080066.P12082726607144449891

namespace A080066

/-- `Δ[comp[a(floor(n/5))+n]]` -/
def P12082726607144449891.Spec : Prop :=
  ∀ n, P12082726607144449891.a n = A080066 (n + 1)

end A080066

/-! ## A080066.P6106246454013692042

`Δ[A000966(n+1)]`
-/

namespace A080066.P6106246454013692042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080066.P6106246454013692042

namespace A080066

/-- `Δ[A000966(n+1)]` -/
def P6106246454013692042.Spec : Prop :=
  ∀ n, P6106246454013692042.a n = A080066 (n + 1)

theorem P6106246454013692042.correct : P6106246454013692042.Spec := by
  intro n
  simp only [A080066, Nat.add_sub_cancel, A080066.P6106246454013692042.f1, A080066.P6106246454013692042.a, A080066.P16360937105414831017.a, SequenceMachineLib.memo_apply]

end A080066

/-! ## A080066.P5990271132569550191

`Δ[A007845(n+1)]+1`
-/

namespace A080066.P5990271132569550191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A080066.P5990271132569550191

namespace A080066

/-- `Δ[A007845(n+1)]+1` -/
def P5990271132569550191.Spec : Prop :=
  ∀ n, P5990271132569550191.a n = A080066 (n + 1)

end A080066

/-! ## A080066.P11132877133150352992

`A008726(Δ[A007845(n+1)])`
-/

namespace A080066.P11132877133150352992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (f1 (n + 1) - f1 n).toNat

end

end A080066.P11132877133150352992

namespace A080066

/-- `A008726(Δ[A007845(n+1)])` -/
def P11132877133150352992.Spec : Prop :=
  ∀ n, P11132877133150352992.a n = A080066 (n + 1)

end A080066

/-! ## A080066.P4053036880609836805

`A063808(A181579(n+1))`
-/

namespace A080066.P4053036880609836805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063808 (A181579 (n + 1)).toNat

end

end A080066.P4053036880609836805

namespace A080066

/-- `A063808(A181579(n+1))` -/
def P4053036880609836805.Spec : Prop :=
  ∀ n, P4053036880609836805.a n = A080066 (n + 1)

end A080066

/-!
# A080067: a(n) = A057163(A057548(A057164(n))).

The programs for A080067, there is no canonical definition to state claims against.
-/

/-! ## A080067.P10776269607965843661

`A057163(A057548(A057164(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080067.P10776269607965843661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057548 (A057164 n).toNat).toNat

end

end A080067.P10776269607965843661

/-! ## A080067.P8387125339880291924

`A057506(A057548(n))`
-/

namespace A080067.P8387125339880291924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057548 n).toNat

end

end A080067.P8387125339880291924

/-! ## A080067.P15805994645329883169

`A072795(A057506(n))`
-/

namespace A080067.P15805994645329883169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072795 (A057506 n).toNat

end

end A080067.P15805994645329883169

/-! ## A080067.P15558123425017354624

`A057506(record[A057161(n+1)])`
-/

namespace A080067.P15558123425017354624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P15558123425017354624

/-! ## A080067.P12766781883593408058

`A057506(record[A057501(n+1)])`
-/

namespace A080067.P12766781883593408058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P12766781883593408058

/-! ## A080067.P10543402679456879388

`A057506(record[A069767(n+1)])`
-/

namespace A080067.P10543402679456879388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P10543402679456879388

/-! ## A080067.P3369921167612358535

`A057506(record[A069770(n+1)])`
-/

namespace A080067.P3369921167612358535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P3369921167612358535

/-! ## A080067.P4244216203468410519

`A082331(A085223(n))`
-/

namespace A080067.P4244216203468410519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (A085223 n).toNat

end

end A080067.P4244216203468410519

/-! ## A080067.P15088484983598901833

`A057506(record[A057502(n+1)])`
-/

namespace A080067.P15088484983598901833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P15088484983598901833

/-! ## A080067.P11492145345054359791

`A057506(record[A057504(n+1)])`
-/

namespace A080067.P11492145345054359791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080067.P11492145345054359791

/-! ## A080067.P4389823075421464990

`A057506(eq[1, A057515(n)])`
-/

namespace A080067.P4389823075421464990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080067.P4389823075421464990

/-!
# A080068: Iterates of A080067.

The programs for A080068, there is no canonical definition to state claims against.
-/

/-! ## A080068.P5791083535289103825

`A080067(a(n-1))` with `a(0)=0`
-/

namespace A080068.P5791083535289103825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080067 (a (n - 1)).toNat

end

end A080068.P5791083535289103825

/-! ## A080068.P4304217667091454685

`A057506(A057548(a(n-1)))` with `a(0)=0`
-/

namespace A080068.P4304217667091454685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057506 (A057548 (a (n - 1)).toNat).toNat

end

end A080068.P4304217667091454685

/-! ## A080068.P4860165719553217844

`xor(A307297(A326540(3*n+1)), A307316(n+1))`
-/

namespace A080068.P4860165719553217844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307297 (A326540 (3 * n + 1)).toNat) (A307316 (n + 1))

end

end A080068.P4860165719553217844

/-!
# A080069: a(n) = A014486(A080068(n)).

The programs for A080069, there is no canonical definition to state claims against.
-/

/-! ## A080069.P16813595846315210607

`A014486(A080068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080069.P16813595846315210607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A080068 n).toNat

end

end A080069.P16813595846315210607

/-! ## A080069.P12355920690828147041

`A040001(2*(n+1))*A057520(A080068(n))`
-/

namespace A080069.P12355920690828147041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * (n + 1)) * A057520 (A080068 n).toNat

end

end A080069.P12355920690828147041

/-! ## A080069.P3268045594273294959

`A194045(A080068(n))/A020639(2*(n+1))`
-/

namespace A080069.P3268045594273294959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (A080068 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A080069.P3268045594273294959

/-! ## A080069.P14600469709888675103

`A001221(2*A000040(n+1))*A057520(A080068(n))`
-/

namespace A080069.P14600469709888675103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A057520 (A080068 n).toNat

end

end A080069.P14600469709888675103

/-!
# A080070: Decimal encoding of parenthesizations produced by simple iteration starting from empty parentheses and where each successive parenthesization is obtained from the previous by reflecting it as a general tree/parenthesization, then adding an extra stem below the root and then reflecting the underlying binary tree.

The programs for A080070, there is no canonical definition to state claims against.
-/

/-! ## A080070.P2143425436815948322

`A063171(A080068(n))`
-/

namespace A080070.P2143425436815948322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A080068 n).toNat

end

end A080070.P2143425436815948322

/-! ## A080070.P6323981565727359399

`A007088(A080069(n))`
-/

namespace A080070.P6323981565727359399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A080069 n).toNat

end

end A080070.P6323981565727359399

/-! ## A080070.P10714979605612959595

`A099820(A080069(n)/2)`
-/

namespace A080070.P10714979605612959595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A080069 n : ℚ) / 2)).toNat

end

end A080070.P10714979605612959595

/-!
# A080071: Top-level length of each parenthesization/root degree of general trees encoded in A080070.

The programs for A080071, there is no canonical definition to state claims against.
-/

/-! ## A080071.P9350819895778651008

`A340862(A321291(A044962(n+1)))`
-/

namespace A080071.P9350819895778651008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (A321291 (A044962 (n + 1)).toNat).toNat

end

end A080071.P9350819895778651008

/-! ## A080071.P12638907815667862247

`A001221(lcm(A053035(n+1), A181332(3*n+1)))`
-/

namespace A080071.P12638907815667862247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A053035 (n + 1)) (A181332 (3 * n + 1)))

end

end A080071.P12638907815667862247

/-! ## A080071.P10020697263478725277

`A340862(n+1)-A290531(A290534(n))`
-/

namespace A080071.P10020697263478725277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340862 (n + 1) - A290531 (A290534 n).toNat

end

end A080071.P10020697263478725277

/-! ## A080071.P4974582736802589284

`xor(A185816(n+1), A289239(A010021(n)))`
-/

namespace A080071.P4974582736802589284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185816 (n + 1)) (A289239 (A010021 n).toNat)

end

end A080071.P4974582736802589284

/-! ## A080071.P15578783844935079492

`A001221(A001318(record[A286335(n+15)]))`
-/

namespace A080071.P15578783844935079492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (n + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A080071.P15578783844935079492

/-!
# A080074: a(n) = round(126*phi^n).

The programs for A080074, there is no canonical definition to state claims against.
-/

/-! ## A080074.P11456688957833560987

`A000045(n)-A110654(A004697(n))`
-/

namespace A080074.P11456688957833560987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A110654 (A004697 n).toNat

end

end A080074.P11456688957833560987

/-! ## A080074.P9610969175600307023

`A000045(n)-A004526(A293552(n))`
-/

namespace A080074.P9610969175600307023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A004526 (A293552 n).toNat

end

end A080074.P9610969175600307023

/-! ## A080074.P5178402512670408361

`A001611(n)-A008619(A293552(n))`
-/

namespace A080074.P5178402512670408361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A008619 (A293552 n).toNat

end

end A080074.P5178402512670408361

/-!
# A080075: Proth numbers: of the form k*2^m + 1 for k odd, m >= 1 and 2^m > k.

The programs for A080075, the canonical program `A080075.P5494454134783611628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080075 has offset 1).

The definition of A080075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116882, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080075.P4252468163158732351

`A157892(n+1)*2^A157893(n+1)+1`
-/

namespace A080075.P4252468163158732351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157892 (n + 1) : ℚ) * (2 : ℚ) ^ (A157893 (n + 1) : ℤ) + 1

end

end A080075.P4252468163158732351

namespace A080075

/-- `A157892(n+1)*2^A157893(n+1)+1` -/
def P4252468163158732351.Spec : Prop :=
  ∀ n, P4252468163158732351.a n = (A080075 (n + 1) : ℚ)

end A080075

/-! ## A080075.P5494454134783611628

`A116882(n+2)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080075

/-- `A116882(n+2)+1` -/
def P5494454134783611628.Spec : Prop :=
  ∀ n, P5494454134783611628.a n = A080075 (n + 1)

theorem P5494454134783611628.correct : P5494454134783611628.Spec := by
  intro n
  simp only [A080075, Nat.add_sub_cancel]

end A080075

/-! ## A080075.P11150066320453008432

`∑[round((n+1)/a(n-1))*a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A080075.P11150066320453008432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n - 1) : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080075.P11150066320453008432

namespace A080075

/-- `∑[round((n+1)/a(n-1))*a(n-1)]` -/
def P11150066320453008432.Spec : Prop :=
  ∀ n, P11150066320453008432.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P13641510149831098464

`A112714(n+1)+2`
-/

namespace A080075.P13641510149831098464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1) + 2

end

end A080075.P13641510149831098464

namespace A080075

/-- `A112714(n+1)+2` -/
def P13641510149831098464.Spec : Prop :=
  ∀ n, P13641510149831098464.a n = A080075 (n + 1)

theorem P13641510149831098464.correct : P13641510149831098464.Spec := by
  intro n
  simp only [A080075, Nat.add_sub_cancel, A080075.P13641510149831098464.a, A080075.P5494454134783611628.a, A112714, A112714.P4485868673494609304.a, A116882, A116882.P18409861636886691626.f1, A116882.P18409861636886691626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080075

/-! ## A080075.P9801935840510895292

`2*A082662(n+1)+1`
-/

namespace A080075.P9801935840510895292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) + 1

end

end A080075.P9801935840510895292

namespace A080075

/-- `2*A082662(n+1)+1` -/
def P9801935840510895292.Spec : Prop :=
  ∀ n, P9801935840510895292.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P1730494159438690283

`∑[A003817(A006165(n+1))+1]+1`
-/

namespace A080075.P1730494159438690283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A006165 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080075.P1730494159438690283

namespace A080075

/-- `∑[A003817(A006165(n+1))+1]+1` -/
def P1730494159438690283.Spec : Prop :=
  ∀ n, P1730494159438690283.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P3775504410284327125

`A082662(n+1)+A082662(n+1)+A006519(A000265(n+1))`
-/

namespace A080075.P3775504410284327125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1) + (A082662 (n + 1) + A006519 (A000265 (n + 1)).toNat)

end

end A080075.P3775504410284327125

namespace A080075

/-- `A082662(n+1)+A082662(n+1)+A006519(A000265(n+1))` -/
def P3775504410284327125.Spec : Prop :=
  ∀ n, P3775504410284327125.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P11528353549021427638

`∑[A062383(A004523(n+1))]+2`
-/

namespace A080075.P11528353549021427638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A004523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080075.P11528353549021427638

namespace A080075

/-- `∑[A062383(A004523(n+1))]+2` -/
def P11528353549021427638.Spec : Prop :=
  ∀ n, P11528353549021427638.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P11686691346630120272

`A082662(n+1)+A082662(n+1)+A038712(A038712(n+1))`
-/

namespace A080075.P11686691346630120272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1) + (A082662 (n + 1) + A038712 (A038712 (n + 1)).toNat)

end

end A080075.P11686691346630120272

namespace A080075

/-- `A082662(n+1)+A082662(n+1)+A038712(A038712(n+1))` -/
def P11686691346630120272.Spec : Prop :=
  ∀ n, P11686691346630120272.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P5936030738719497557

`∑[A053644(A230709(n+2))]+1`
-/

namespace A080075.P5936030738719497557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A230709 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080075.P5936030738719497557

namespace A080075

/-- `∑[A053644(A230709(n+2))]+1` -/
def P5936030738719497557.Spec : Prop :=
  ∀ n, P5936030738719497557.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P13867704746390283089

`A082662(A080637(n+1))+1`
-/

namespace A080075.P13867704746390283089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A080637 (n + 1)).toNat + 1

end

end A080075.P13867704746390283089

namespace A080075

/-- `A082662(A080637(n+1))+1` -/
def P13867704746390283089.Spec : Prop :=
  ∀ n, P13867704746390283089.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P12040910847072022757

`∑[A053644(A006165(2*(n+1)))]+2`
-/

namespace A080075.P12040910847072022757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A006165 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080075.P12040910847072022757

namespace A080075

/-- `∑[A053644(A006165(2*(n+1)))]+2` -/
def P12040910847072022757.Spec : Prop :=
  ∀ n, P12040910847072022757.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P11960666296233911645

`∑[A053644(A078881(2*n+1))]+2`
-/

namespace A080075.P11960666296233911645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A078881 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080075.P11960666296233911645

namespace A080075

/-- `∑[A053644(A078881(2*n+1))]+2` -/
def P11960666296233911645.Spec : Prop :=
  ∀ n, P11960666296233911645.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P4458817722977845184

`A082662(A144396(n+1))/2+1`
-/

namespace A080075.P4458817722977845184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (A144396 (n + 1)).toNat : ℚ) / 2 + 1

end

end A080075.P4458817722977845184

namespace A080075

/-- `A082662(A144396(n+1))/2+1` -/
def P4458817722977845184.Spec : Prop :=
  ∀ n, P4458817722977845184.a n = (A080075 (n + 1) : ℚ)

end A080075

/-! ## A080075.P17597179214193192000

`A000265(A082662(n+1)+A082662(n+1)+1)`
-/

namespace A080075.P17597179214193192000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A082662 (n + 1) + (A082662 (n + 1) + 1)).toNat

end

end A080075.P17597179214193192000

namespace A080075

/-- `A000265(A082662(n+1)+A082662(n+1)+1)` -/
def P17597179214193192000.Spec : Prop :=
  ∀ n, P17597179214193192000.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P11200808256564855430

`A303534(A044051(2*(n+1)))+A044051(2*(n+1))`
-/

namespace A080075.P11200808256564855430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (A044051 (2 * (n + 1))).toNat + A044051 (2 * (n + 1))

end

end A080075.P11200808256564855430

namespace A080075

/-- `A303534(A044051(2*(n+1)))+A044051(2*(n+1))` -/
def P11200808256564855430.Spec : Prop :=
  ∀ n, P11200808256564855430.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P13435943774656776894

`lt[A000265(n+1)², n+1]+2`
-/

namespace A080075.P13435943774656776894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A080075.P13435943774656776894

namespace A080075

/-- `lt[A000265(n+1)², n+1]+2` -/
def P13435943774656776894.Spec : Prop :=
  ∀ n, (P13435943774656776894.a n : ℤ) = A080075 (n + 1)

end A080075

/-! ## A080075.P6328164513809574698

`A005408(A082662(n+1))`
-/

namespace A080075.P6328164513809574698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A082662 (n + 1)).toNat

end

end A080075.P6328164513809574698

namespace A080075

/-- `A005408(A082662(n+1))` -/
def P6328164513809574698.Spec : Prop :=
  ∀ n, P6328164513809574698.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P247584825599232519

`A004273(A082662(n+1)+1)`
-/

namespace A080075.P247584825599232519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A082662 (n + 1) + 1).toNat

end

end A080075.P247584825599232519

namespace A080075

/-- `A004273(A082662(n+1)+1)` -/
def P247584825599232519.Spec : Prop :=
  ∀ n, P247584825599232519.a n = A080075 (n + 1)

end A080075

/-! ## A080075.P6248142453750357247

`A005843(A082662(n+1)+1)-1`
-/

namespace A080075.P6248142453750357247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082662 (n + 1) + 1).toNat - 1

end

end A080075.P6248142453750357247

namespace A080075

/-- `A005843(A082662(n+1)+1)-1` -/
def P6248142453750357247.Spec : Prop :=
  ∀ n, P6248142453750357247.a n = A080075 (n + 1)

end A080075

/-!
# A080076: Proth primes: primes of the form k*2^m + 1 with odd k < 2^m, m >= 1.

The programs for A080076, the canonical program `A080076.P7647134114525430828` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080076 has offset 1).

The definition of A080076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080076.P7647134114525430828

`p?[A080075(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080076

/-- `p?[A080075(n+1)]` -/
def P7647134114525430828.Spec : Prop :=
  ∀ n, P7647134114525430828.a n = A080076 (n + 1)

theorem P7647134114525430828.correct : P7647134114525430828.Spec := by
  intro n
  simp only [A080076, Nat.add_sub_cancel]

end A080076

/-! ## A080076.P17495914050002641883

`p?[A112714(n+1)+2]`
-/

namespace A080076.P17495914050002641883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080076.P17495914050002641883

namespace A080076

/-- `p?[A112714(n+1)+2]` -/
def P17495914050002641883.Spec : Prop :=
  ∀ n, P17495914050002641883.a n = A080076 (n + 1)

theorem P17495914050002641883.correct : P17495914050002641883.Spec := by
  intro n
  simp only [A080076, Nat.add_sub_cancel, A080076.P17495914050002641883.f1, A080076.P17495914050002641883.a, A080076.P7647134114525430828.f1, A080076.P7647134114525430828.a, A080075, A080075.P5494454134783611628.a, A112714, A112714.P4485868673494609304.a, A116882, A116882.P18409861636886691626.f1, A116882.P18409861636886691626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080076

/-! ## A080076.P10347757655245907455

`p?[2*A082662(n+1)+1]`
-/

namespace A080076.P10347757655245907455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082662 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080076.P10347757655245907455

namespace A080076

/-- `p?[2*A082662(n+1)+1]` -/
def P10347757655245907455.Spec : Prop :=
  ∀ n, P10347757655245907455.a n = A080076 (n + 1)

end A080076

/-! ## A080076.P13144108265945914030

`xor(1, p?[A080075(n-(1-4/2))]-1)`
-/

namespace A080076.P13144108265945914030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A080076.P13144108265945914030

namespace A080076

/-- `xor(1, p?[A080075(n-(1-4/2))]-1)` -/
def P13144108265945914030.Spec : Prop :=
  ∀ n, P13144108265945914030.a n = A080076 (n + 1)

end A080076

/-! ## A080076.P10183481203268081253

`p?[A082662(A080637(n+1))+1]`
-/

namespace A080076.P10183481203268081253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (A080637 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080076.P10183481203268081253

namespace A080076

/-- `p?[A082662(A080637(n+1))+1]` -/
def P10183481203268081253.Spec : Prop :=
  ∀ n, P10183481203268081253.a n = A080076 (n + 1)

end A080076

/-! ## A080076.P6188761614438872988

`∩[A080075(n+1), A095315(n+1)]`
-/

namespace A080076.P6188761614438872988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P6188761614438872988

namespace A080076

/-- `∩[A080075(n+1), A095315(n+1)]` -/
def P6188761614438872988.Spec : Prop :=
  ∀ n, (P6188761614438872988.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P15073595657697819018

`∩[A095315(n+1), A338129(n+1)]`
-/

namespace A080076.P15073595657697819018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P15073595657697819018

namespace A080076

/-- `∩[A095315(n+1), A338129(n+1)]` -/
def P15073595657697819018.Spec : Prop :=
  ∀ n, (P15073595657697819018.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P10832688758013995323

`p?[A116882(n+2)+1]`
-/

namespace A080076.P10832688758013995323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080076.P10832688758013995323

namespace A080076

/-- `p?[A116882(n+2)+1]` -/
def P10832688758013995323.Spec : Prop :=
  ∀ n, P10832688758013995323.a n = A080076 (n + 1)

theorem P10832688758013995323.correct : P10832688758013995323.Spec := by
  intro n
  simp only [A080076, Nat.add_sub_cancel, A080076.P10832688758013995323.f1, A080076.P10832688758013995323.a, A080076.P7647134114525430828.f1, A080076.P7647134114525430828.a, A080075, A080075.P5494454134783611628.a, A116882, A116882.P18409861636886691626.f1, A116882.P18409861636886691626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080076

/-! ## A080076.P4686901830750285835

`∩[A080075(n+1), A380468(n+1)]`
-/

namespace A080076.P4686901830750285835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P4686901830750285835

namespace A080076

/-- `∩[A080075(n+1), A380468(n+1)]` -/
def P4686901830750285835.Spec : Prop :=
  ∀ n, (P4686901830750285835.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P6049719041032218268

`∩[A080075(n+1), A095319(n+1)]`
-/

namespace A080076.P6049719041032218268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P6049719041032218268

namespace A080076

/-- `∩[A080075(n+1), A095319(n+1)]` -/
def P6049719041032218268.Spec : Prop :=
  ∀ n, (P6049719041032218268.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P15946890337664588502

`∩[A080075(n+1), A396082(n+1)]`
-/

namespace A080076.P15946890337664588502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P15946890337664588502

namespace A080076

/-- `∩[A080075(n+1), A396082(n+1)]` -/
def P15946890337664588502.Spec : Prop :=
  ∀ n, (P15946890337664588502.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P1802161307354716442

`∩[A042998(n+1), A080075(n+1)]`
-/

namespace A080076.P1802161307354716442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P1802161307354716442

namespace A080076

/-- `∩[A042998(n+1), A080075(n+1)]` -/
def P1802161307354716442.Spec : Prop :=
  ∀ n, (P1802161307354716442.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P18263425751343777796

`∩[A045403(n+1), A080075(n+1)]`
-/

namespace A080076.P18263425751343777796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P18263425751343777796

namespace A080076

/-- `∩[A045403(n+1), A080075(n+1)]` -/
def P18263425751343777796.Spec : Prop :=
  ∀ n, (P18263425751343777796.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P6692751103199286904

`∩[A042998(n+1), A338129(n+1)]`
-/

namespace A080076.P6692751103199286904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P6692751103199286904

namespace A080076

/-- `∩[A042998(n+1), A338129(n+1)]` -/
def P6692751103199286904.Spec : Prop :=
  ∀ n, (P6692751103199286904.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P10851666688857780894

`∩[A045403(n+1), A338129(n+1)]`
-/

namespace A080076.P10851666688857780894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P10851666688857780894

namespace A080076

/-- `∩[A045403(n+1), A338129(n+1)]` -/
def P10851666688857780894.Spec : Prop :=
  ∀ n, (P10851666688857780894.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P713575491205283537

`∩[A080075(n+1), A325143(n+1)]`
-/

namespace A080076.P713575491205283537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P713575491205283537

namespace A080076

/-- `∩[A080075(n+1), A325143(n+1)]` -/
def P713575491205283537.Spec : Prop :=
  ∀ n, (P713575491205283537.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P789062241282851926

`∩[A080075(n+1), A095323(n+1)]`
-/

namespace A080076.P789062241282851926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P789062241282851926

namespace A080076

/-- `∩[A080075(n+1), A095323(n+1)]` -/
def P789062241282851926.Spec : Prop :=
  ∀ n, (P789062241282851926.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P11514898690115613338

`∩[A080075(n+1), A090190(n+1)]`
-/

namespace A080076.P11514898690115613338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P11514898690115613338

namespace A080076

/-- `∩[A080075(n+1), A090190(n+1)]` -/
def P11514898690115613338.Spec : Prop :=
  ∀ n, (P11514898690115613338.a n : ℤ) = A080076 (n + 1)

end A080076

/-! ## A080076.P4442753510785345756

`∩[A080075(n+1), A095285(n+1)]`
-/

namespace A080076.P4442753510785345756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080076.P4442753510785345756

namespace A080076

/-- `∩[A080075(n+1), A095285(n+1)]` -/
def P4442753510785345756.Spec : Prop :=
  ∀ n, (P4442753510785345756.a n : ℤ) = A080076 (n + 1)

end A080076

/-!
# A080077: Smallest prime p such that between p and the next prime for every k = 1, ..., n there is a number m_k whose smallest prime factor is prime(k).

The programs for A080077, there is no canonical definition to state claims against.
-/

/-! ## A080077.P15337831776134020014

`A104138(A250410(2*(n+1))%A250973(n+1))`
-/

namespace A080077.P15337831776134020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (Int.tmod (A250410 (2 * (n + 1))) (A250973 (n + 1))).toNat

end

end A080077.P15337831776134020014

/-! ## A080077.P3027961197665214232

`A100964(A377272(n+1))`
-/

namespace A080077.P3027961197665214232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100964 (A377272 (n + 1)).toNat

end

end A080077.P3027961197665214232

/-!
# A080078: Union of A080105 and A080106.

The programs for A080078, there is no canonical definition to state claims against.
-/

/-! ## A080078.P11707055604828019640

`record[Δ[A073188(A293642(n))]]`
-/

namespace A080078.P11707055604828019640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A293642 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080078.P11707055604828019640

/-! ## A080078.P10014090322576762885

`A175427(∑[A005378(A174709(n))])`
-/

namespace A080078.P10014090322576762885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A174709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080078.P10014090322576762885

/-! ## A080078.P13809183054147404971

`record[A111660(A245564(n))]`
-/

namespace A080078.P13809183054147404971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A245564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080078.P13809183054147404971

/-! ## A080078.P17308978111037439304

`record[A273190(A293643(n))]`
-/

namespace A080078.P17308978111037439304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A293643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080078.P17308978111037439304

/-!
# A080079: Least number causing the longest carry sequence when adding numbers <= n to n in binary representation.

The programs for A080079, the canonical program `A080079.P157048171739867416` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080079 has offset 1).

The definition of A080079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080079.P5846952736001740071

`n+2-A006257(n+1)`
-/

namespace A080079.P5846952736001740071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006257 (n + 1)

end

end A080079.P5846952736001740071

namespace A080079

/-- `n+2-A006257(n+1)` -/
def P5846952736001740071.Spec : Prop :=
  ∀ n, P5846952736001740071.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P6735389805342863650

`A004755(n+1)-2*(n+1)`
-/

namespace A080079.P6735389805342863650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1) - (2 * (n + 1) : ℤ)

end

end A080079.P6735389805342863650

namespace A080079

/-- `A004755(n+1)-2*(n+1)` -/
def P6735389805342863650.Spec : Prop :=
  ∀ n, P6735389805342863650.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P157048171739867416

`A062383(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080079

/-- `A062383(n+1)-(n+1)` -/
def P157048171739867416.Spec : Prop :=
  ∀ n, P157048171739867416.a n = A080079 (n + 1)

theorem P157048171739867416.correct : P157048171739867416.Spec := by
  intro n
  simp only [A080079, Nat.add_sub_cancel]

end A080079

/-! ## A080079.P2858886226108163229

`abs(or(n+1, 1-a(n-1)))` with `a(0)=1`
-/

namespace A080079.P2858886226108163229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|

end

end A080079.P2858886226108163229

namespace A080079

/-- `abs(or(n+1, 1-a(n-1)))` -/
def P2858886226108163229.Spec : Prop :=
  ∀ n, P2858886226108163229.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P8281915952485285514

`∑[C(and(n+1, 2*n), n)]-n`
-/

namespace A080079.P8281915952485285514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A080079.P8281915952485285514

namespace A080079

/-- `∑[C(and(n+1, 2*n), n)]-n` -/
def P8281915952485285514.Spec : Prop :=
  ∀ n, P8281915952485285514.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P916907872208236879

`-or(n+1, -(a(n-1)+n))` with `a(0)=1`
-/

namespace A080079.P916907872208236879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.lor (n + 1 : ℤ) (-(a (n - 1) + (n : ℤ)))

end

end A080079.P916907872208236879

namespace A080079

/-- `-or(n+1, -(a(n-1)+n))` -/
def P916907872208236879.Spec : Prop :=
  ∀ n, P916907872208236879.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P18041971804099472508

`(a(n-1)-1+n)%(n+1)+1` with `a(0)=1`
-/

namespace A080079.P18041971804099472508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - 1 + (n : ℤ)) (n + 1 : ℤ) + 1

end

end A080079.P18041971804099472508

namespace A080079

/-- `(a(n-1)-1+n)%(n+1)+1` -/
def P18041971804099472508.Spec : Prop :=
  ∀ n, P18041971804099472508.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P15402516142801417075

`or(n+1, a(n-1)+n-1)-n` with `a(0)=1`
-/

namespace A080079.P15402516142801417075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n + 1 : ℤ) (a (n - 1) + ((n : ℤ) - 1)) - (n : ℤ)

end

end A080079.P15402516142801417075

namespace A080079

/-- `or(n+1, a(n-1)+n-1)-n` -/
def P15402516142801417075.Spec : Prop :=
  ∀ n, P15402516142801417075.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P604539050692592165

`2*2^floor(log(n+1)/log(2))-(n+1)`
-/

namespace A080079.P604539050692592165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (⌊Real.log (n + 1 : ℝ) / Real.log (2 : ℝ)⌋ : ℤ) - (n + 1 : ℚ)

end

end A080079.P604539050692592165

namespace A080079

/-- `2*2^floor(log(n+1)/log(2))-(n+1)` -/
def P604539050692592165.Spec : Prop :=
  ∀ n, P604539050692592165.a n = (A080079 (n + 1) : ℚ)

end A080079

/-! ## A080079.P6872675883078778624

`A076877(n+1)%(n+2)`
-/

namespace A080079.P6872675883078778624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076877 (n + 1)) (n + 2 : ℤ)

end

end A080079.P6872675883078778624

namespace A080079

/-- `A076877(n+1)%(n+2)` -/
def P6872675883078778624.Spec : Prop :=
  ∀ n, P6872675883078778624.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P10440609989658263822

`gcd(A035327(n), A099894(n))`
-/

namespace A080079.P10440609989658263822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A099894 n)

end

end A080079.P10440609989658263822

namespace A080079

/-- `gcd(A035327(n), A099894(n))` -/
def P10440609989658263822.Spec : Prop :=
  ∀ n, (P10440609989658263822.a n : ℤ) = A080079 (n + 1)

end A080079

/-! ## A080079.P2327625629728343224

`xor(A086799(n+1), A142151(n))`
-/

namespace A080079.P2327625629728343224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086799 (n + 1)) (A142151 n)

end

end A080079.P2327625629728343224

namespace A080079

/-- `xor(A086799(n+1), A142151(n))` -/
def P2327625629728343224.Spec : Prop :=
  ∀ n, P2327625629728343224.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P18019755537968084534

`A004757(n+1)%A004754(n+1)`
-/

namespace A080079.P18019755537968084534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004757 (n + 1)) (A004754 (n + 1))

end

end A080079.P18019755537968084534

namespace A080079

/-- `A004757(n+1)%A004754(n+1)` -/
def P18019755537968084534.Spec : Prop :=
  ∀ n, P18019755537968084534.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P14245710421531857155

`A004759(n+1)%A004755(n+1)`
-/

namespace A080079.P14245710421531857155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004759 (n + 1)) (A004755 (n + 1))

end

end A080079.P14245710421531857155

namespace A080079

/-- `A004759(n+1)%A004755(n+1)` -/
def P14245710421531857155.Spec : Prop :=
  ∀ n, P14245710421531857155.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P14239100379321381163

`A277351(n+1)%A073870(n+1)`
-/

namespace A080079.P14239100379321381163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277351 (n + 1)) (A073870 (n + 1))

end

end A080079.P14239100379321381163

namespace A080079

/-- `A277351(n+1)%A073870(n+1)` -/
def P14239100379321381163.Spec : Prop :=
  ∀ n, P14239100379321381163.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P13955585447511250111

`A262617(n+1)/6`
-/

namespace A080079.P13955585447511250111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262617 (n + 1) : ℚ) / 6

end

end A080079.P13955585447511250111

namespace A080079

/-- `A262617(n+1)/6` -/
def P13955585447511250111.Spec : Prop :=
  ∀ n, P13955585447511250111.a n = (A080079 (n + 1) : ℚ)

end A080079

/-! ## A080079.P12337672129775566488

`(A261693(n+1)+1)/2`
-/

namespace A080079.P12337672129775566488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261693 (n + 1) + 1 : ℚ) / 2

end

end A080079.P12337672129775566488

namespace A080079

/-- `(A261693(n+1)+1)/2` -/
def P12337672129775566488.Spec : Prop :=
  ∀ n, P12337672129775566488.a n = (A080079 (n + 1) : ℚ)

end A080079

/-! ## A080079.P13649865272389498685

`A171763(n+2)%(n+2)`
-/

namespace A080079.P13649865272389498685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171763 (n + 2)) (n + 2 : ℤ)

end

end A080079.P13649865272389498685

namespace A080079

/-- `A171763(n+2)%(n+2)` -/
def P13649865272389498685.Spec : Prop :=
  ∀ n, P13649865272389498685.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P16953401885962784604

`A049773(A059894(n+1))`
-/

namespace A080079.P16953401885962784604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A059894 (n + 1)).toNat

end

end A080079.P16953401885962784604

namespace A080079

/-- `A049773(A059894(n+1))` -/
def P16953401885962784604.Spec : Prop :=
  ∀ n, P16953401885962784604.a n = A080079 (n + 1)

end A080079

/-! ## A080079.P8467447417184340893

`val(A277918(n+1), 2)`
-/

namespace A080079.P8467447417184340893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277918 (n + 1)).toNat 2

end

end A080079.P8467447417184340893

namespace A080079

/-- `val(A277918(n+1), 2)` -/
def P8467447417184340893.Spec : Prop :=
  ∀ n, (P8467447417184340893.a n : ℤ) = A080079 (n + 1)

end A080079

/-!
# A080080: T(n,k) = length of longest carry sequence when adding k to n in binary representation, 1 <= k <= n (triangular array).

The programs for A080080, there is no canonical definition to state claims against.
-/

/-! ## A080080.P10936552618424768741

`A050602(A245300(comp[∑[n]]))`
-/

namespace A080080.P10936552618424768741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A080080.P10936552618424768741

/-! ## A080080.P17955889249857619388

`and(A058394(n), A260450(A230739(n+1)))`
-/

namespace A080080.P17955889249857619388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058394 n) (A260450 (A230739 (n + 1)).toNat)

end

end A080080.P17955889249857619388

/-! ## A080080.P9635427016628566939

`and(p?[A097324(n+1)], A058394(n))`
-/

namespace A080080.P9635427016628566939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A058394 n)

end

end A080080.P9635427016628566939

/-! ## A080080.P1249735690131463531

`and(A004273(A022115(n)), A058394(n))`
-/

namespace A080080.P1249735690131463531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A022115 n).toNat) (A058394 n)

end

end A080080.P1249735690131463531

/-! ## A080080.P13591496596408268267

`and(A058394(n), A061345(A003598(n+1)))`
-/

namespace A080080.P13591496596408268267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058394 n) (A061345 (A003598 (n + 1)).toNat)

end

end A080080.P13591496596408268267

/-!
# A080081: Beatty sequence for (3+sqrt(13))/2.

The programs for A080081, the canonical program `A080081.P2894289496035499761` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080081 has offset 1).

The definition of A080081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080081.P2894289496035499761

`floor((n+1)*(3+sqrt(13))/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080081

/-- `floor((n+1)*(3+sqrt(13))/2)` -/
def P2894289496035499761.Spec : Prop :=
  ∀ n, P2894289496035499761.a n = A080081 (n + 1)

theorem P2894289496035499761.correct : P2894289496035499761.Spec := by
  intro n
  simp only [A080081, Nat.add_sub_cancel]

end A080081

/-! ## A080081.P1633063888297492241

`A080600(n+1)-1`
-/

namespace A080081.P1633063888297492241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (n + 1) - 1

end

end A080081.P1633063888297492241

namespace A080081

/-- `A080600(n+1)-1` -/
def P1633063888297492241.Spec : Prop :=
  ∀ n, P1633063888297492241.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P5231679258881306642

`A001956(n+1)-(n+1)`
-/

namespace A080081.P5231679258881306642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - (n + 1 : ℤ)

end

end A080081.P5231679258881306642

namespace A080081

/-- `A001956(n+1)-(n+1)` -/
def P5231679258881306642.Spec : Prop :=
  ∀ n, P5231679258881306642.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P16632714268067493250

`A188590(n)+a(n-1)` with `a(0)=3`
-/

namespace A080081.P16632714268067493250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A188590 n + a (n - 1)

end

end A080081.P16632714268067493250

namespace A080081

/-- `A188590(n)+a(n-1)` -/
def P16632714268067493250.Spec : Prop :=
  ∀ n, P16632714268067493250.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P2067716353030219296

`A184480(n+1)+2*(n+1)`
-/

namespace A080081.P2067716353030219296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (n + 1) + (2 * (n + 1) : ℤ)

end

end A080081.P2067716353030219296

namespace A080081

/-- `A184480(n+1)+2*(n+1)` -/
def P2067716353030219296.Spec : Prop :=
  ∀ n, P2067716353030219296.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P1772490335754163473

`A080667(n+1)+A184480(n+1)-A184482(n+1)`
-/

namespace A080081.P1772490335754163473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080667 (n + 1) + (A184480 (n + 1) - A184482 (n + 1))

end

end A080081.P1772490335754163473

namespace A080081

/-- `A080667(n+1)+A184480(n+1)-A184482(n+1)` -/
def P1772490335754163473.Spec : Prop :=
  ∀ n, P1772490335754163473.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P3545477035053711403

`A284675(n+2)-(n+3)`
-/

namespace A080081.P3545477035053711403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 2) - (n + 3 : ℤ)

end

end A080081.P3545477035053711403

namespace A080081

/-- `A284675(n+2)-(n+3)` -/
def P3545477035053711403.Spec : Prop :=
  ∀ n, P3545477035053711403.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P8725576755288186301

`A284676(n+2)+2*n`
-/

namespace A080081.P8725576755288186301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 2) + (2 * n : ℤ)

end

end A080081.P8725576755288186301

namespace A080081

/-- `A284676(n+2)+2*n` -/
def P8725576755288186301.Spec : Prop :=
  ∀ n, P8725576755288186301.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P11258163203369463994

`A284678(n+2)-(n+3)`
-/

namespace A080081.P11258163203369463994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 2) - (n + 3 : ℤ)

end

end A080081.P11258163203369463994

namespace A080081

/-- `A284678(n+2)-(n+3)` -/
def P11258163203369463994.Spec : Prop :=
  ∀ n, P11258163203369463994.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P11522310851799304650

`A284679(n+2)+2*n`
-/

namespace A080081.P11522310851799304650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 2) + (2 * n : ℤ)

end

end A080081.P11522310851799304650

namespace A080081

/-- `A284679(n+2)+2*n` -/
def P11522310851799304650.Spec : Prop :=
  ∀ n, P11522310851799304650.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P8324349204844710713

`∑[Δ[A284676(n+1)]+2]`
-/

namespace A080081.P8324349204844710713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080081.P8324349204844710713

namespace A080081

/-- `∑[Δ[A284676(n+1)]+2]` -/
def P8324349204844710713.Spec : Prop :=
  ∀ n, P8324349204844710713.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P15037640988878632639

`∑[A103093(Δ[A284676(n+1)])]`
-/

namespace A080081.P15037640988878632639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103093 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080081.P15037640988878632639

namespace A080081

/-- `∑[A103093(Δ[A284676(n+1)])]` -/
def P15037640988878632639.Spec : Prop :=
  ∀ n, P15037640988878632639.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P28951902295233271

`∑[A336112(Δ[A284678(n+1)])]`
-/

namespace A080081.P28951902295233271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080081.P28951902295233271

namespace A080081

/-- `∑[A336112(Δ[A284678(n+1)])]` -/
def P28951902295233271.Spec : Prop :=
  ∀ n, P28951902295233271.a n = A080081 (n + 1)

end A080081

/-! ## A080081.P1313302623492899655

`A023443(A080600(n+1))`
-/

namespace A080081.P1313302623492899655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080600 (n + 1)).toNat

end

end A080081.P1313302623492899655

namespace A080081

/-- `A023443(A080600(n+1))` -/
def P1313302623492899655.Spec : Prop :=
  ∀ n, P1313302623492899655.a n = A080081 (n + 1)

end A080081

/-!
# A080082: Smallest prime p such that there is a gap of exactly 2*prime(n) between p and the next prime.

The programs for A080082, there is no canonical definition to state claims against.
-/

/-! ## A080082.P4340853130927111780

`A000230(A000040(n+1))`
-/

namespace A080082.P4340853130927111780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A000040 (n + 1)).toNat

end

end A080082.P4340853130927111780

/-! ## A080082.P18129875857614917904

`A080083(n+1)-2*A000040(n+1)`
-/

namespace A080082.P18129875857614917904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080083 (n + 1) - 2 * A000040 (n + 1)

end

end A080082.P18129875857614917904

/-! ## A080082.P17499980748770581098

`A000230(p?[comp[n²]])`
-/

namespace A080082.P17499980748770581098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080082.P17499980748770581098

/-! ## A080082.P14377261902140573403

`or(1, A000230(p?[xor(1, n)+1]))`
-/

namespace A080082.P14377261902140573403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A080082.P14377261902140573403

/-! ## A080082.P12953000892635877049

`A000230(A008578(n+2))`
-/

namespace A080082.P12953000892635877049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A008578 (n + 2)).toNat

end

end A080082.P12953000892635877049

/-! ## A080082.P13119457521974972602

`A000230(A182986(n+2))`
-/

namespace A080082.P13119457521974972602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A182986 (n + 2)).toNat

end

end A080082.P13119457521974972602

/-! ## A080082.P10386767759688838697

`A000230(A100484(n+1)/2)`
-/

namespace A080082.P10386767759688838697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A080082.P10386767759688838697

/-! ## A080082.P17818774686343497130

`A000230(A291463(n+1)/A001223(n+1))`
-/

namespace A080082.P17818774686343497130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A291463 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ))).toNat

end

end A080082.P17818774686343497130

/-! ## A080082.P17334587064188322593

`A045881(p?[xor(1, n)+1])-1`
-/

namespace A080082.P17334587064188322593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A080082.P17334587064188322593

/-! ## A080082.P10750279707346787541

`A000230(A238853(n+1))`
-/

namespace A080082.P10750279707346787541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A238853 (n + 1)).toNat

end

end A080082.P10750279707346787541

/-!
# A080083: Smallest prime p such that there is a gap of 2*prime(n) between p and previous prime.

The programs for A080083, there is no canonical definition to state claims against.
-/

/-! ## A080083.P11090292950926969978

`A001632(A000040(n+1))`
-/

namespace A080083.P11090292950926969978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (A000040 (n + 1)).toNat

end

end A080083.P11090292950926969978

/-! ## A080083.P8020726398203354120

`A080082(n+1)+2*A000040(n+1)`
-/

namespace A080083.P8020726398203354120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080082 (n + 1) + 2 * A000040 (n + 1)

end

end A080083.P8020726398203354120

/-! ## A080083.P1332701967455350410

`A001632(p?[comp[n²]])`
-/

namespace A080083.P1332701967455350410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080083.P1332701967455350410

/-! ## A080083.P143083918481145255

`A001632(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A080083.P143083918481145255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A080083.P143083918481145255

/-! ## A080083.P6401379443140154942

`A001632(Δ[A007504(n)])`
-/

namespace A080083.P6401379443140154942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (f1 (n + 1) - f1 n).toNat

end

end A080083.P6401379443140154942

/-!
# A080084: Number of prime factors in the factorial of the n-th prime, counted with multiplicity.

The programs for A080084, the canonical program `A080084.P6247052819730457464` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080084 has offset 1).

The definition of A080084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080084.P6247052819730457464

`A022559(A000040(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080084

/-- `A022559(A000040(n+1))` -/
def P6247052819730457464.Spec : Prop :=
  ∀ n, P6247052819730457464.a n = A080084 (n + 1)

theorem P6247052819730457464.correct : P6247052819730457464.Spec := by
  intro n
  simp only [A080084, Nat.add_sub_cancel]

end A080084

/-! ## A080084.P6134921124428145862

`A022559(A008578(n+2))`
-/

namespace A080084.P6134921124428145862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A008578 (n + 2)).toNat

end

end A080084.P6134921124428145862

namespace A080084

/-- `A022559(A008578(n+2))` -/
def P6134921124428145862.Spec : Prop :=
  ∀ n, P6134921124428145862.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P8310952111315682295

`A022559(A182986(n+2))`
-/

namespace A080084.P8310952111315682295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A182986 (n + 2)).toNat

end

end A080084.P8310952111315682295

namespace A080084

/-- `A022559(A182986(n+2))` -/
def P8310952111315682295.Spec : Prop :=
  ∀ n, P8310952111315682295.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P11286871069818868630

`A022559(∑[A054541(n+1)])`
-/

namespace A080084.P11286871069818868630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080084.P11286871069818868630

namespace A080084

/-- `A022559(∑[A054541(n+1)])` -/
def P11286871069818868630.Spec : Prop :=
  ∀ n, P11286871069818868630.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P4673503303503966796

`A022559(record[A000705(n+1)])`
-/

namespace A080084.P4673503303503966796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P4673503303503966796

namespace A080084

/-- `A022559(record[A000705(n+1)])` -/
def P4673503303503966796.Spec : Prop :=
  ∀ n, P4673503303503966796.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P595101541236224683

`A022559(record[A053811(n+1)])`
-/

namespace A080084.P595101541236224683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P595101541236224683

namespace A080084

/-- `A022559(record[A053811(n+1)])` -/
def P595101541236224683.Spec : Prop :=
  ∀ n, P595101541236224683.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P6627135632485420399

`A022559(record[A006530(n+2)])`
-/

namespace A080084.P6627135632485420399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P6627135632485420399

namespace A080084

/-- `A022559(record[A006530(n+2)])` -/
def P6627135632485420399.Spec : Prop :=
  ∀ n, P6627135632485420399.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P13064319278057415284

`A022559(record[A020639(n+2)])`
-/

namespace A080084.P13064319278057415284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P13064319278057415284

namespace A080084

/-- `A022559(record[A020639(n+2)])` -/
def P13064319278057415284.Spec : Prop :=
  ∀ n, P13064319278057415284.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P9668796696988615143

`A022559(A006093(n+1)+1)`
-/

namespace A080084.P9668796696988615143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A006093 (n + 1) + 1).toNat

end

end A080084.P9668796696988615143

namespace A080084

/-- `A022559(A006093(n+1)+1)` -/
def P9668796696988615143.Spec : Prop :=
  ∀ n, P9668796696988615143.a n = A080084 (n + 1)

theorem P9668796696988615143.correct : P9668796696988615143.Spec := by
  intro n
  simp only [A080084, Nat.add_sub_cancel, A080084.P9668796696988615143.a, A080084.P6247052819730457464.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P11318177267732088261.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080084

/-! ## A080084.P17192415133245679859

`A022559(A040976(n+1)+2)`
-/

namespace A080084.P17192415133245679859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A040976 (n + 1) + 2).toNat

end

end A080084.P17192415133245679859

namespace A080084

/-- `A022559(A040976(n+1)+2)` -/
def P17192415133245679859.Spec : Prop :=
  ∀ n, P17192415133245679859.a n = A080084 (n + 1)

theorem P17192415133245679859.correct : P17192415133245679859.Spec := by
  intro n
  simp only [A080084, Nat.add_sub_cancel, A080084.P17192415133245679859.a, A080084.P6247052819730457464.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A022559, A022559.P10554250414511796107.a, A040976, A040976.P11599754272797435513.a, A001222, A001222.P11318177267732088261.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080084

/-! ## A080084.P1386885655061772088

`A022559(record[p?[A007947(n+1)]])`
-/

namespace A080084.P1386885655061772088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P1386885655061772088

namespace A080084

/-- `A022559(record[p?[A007947(n+1)]])` -/
def P1386885655061772088.Spec : Prop :=
  ∀ n, P1386885655061772088.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P14125908464307149203

`A022559(record[A000010(n+1)+1])`
-/

namespace A080084.P14125908464307149203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P14125908464307149203

namespace A080084

/-- `A022559(record[A000010(n+1)+1])` -/
def P14125908464307149203.Spec : Prop :=
  ∀ n, P14125908464307149203.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P7206480944428602749

`A022559(A000961(A024620(n+1)))`
-/

namespace A080084.P7206480944428602749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A000961 (A024620 (n + 1)).toNat).toNat

end

end A080084.P7206480944428602749

namespace A080084

/-- `A022559(A000961(A024620(n+1)))` -/
def P7206480944428602749.Spec : Prop :=
  ∀ n, P7206480944428602749.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P15377374069514343012

`A022559(eq[1, A001222(n+1)]+1)`
-/

namespace A080084.P15377374069514343012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080084.P15377374069514343012

namespace A080084

/-- `A022559(eq[1, A001222(n+1)]+1)` -/
def P15377374069514343012.Spec : Prop :=
  ∀ n, P15377374069514343012.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P13933523216312610957

`A022559(eq[n, A000010(n+1)]+1)`
-/

namespace A080084.P13933523216312610957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080084.P13933523216312610957

namespace A080084

/-- `A022559(eq[n, A000010(n+1)]+1)` -/
def P13933523216312610957.Spec : Prop :=
  ∀ n, P13933523216312610957.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P14807822579696843251

`A022559(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A080084.P14807822579696843251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080084.P14807822579696843251

namespace A080084

/-- `A022559(eq[1, ∏{e}[n, #+1]-1])` -/
def P14807822579696843251.Spec : Prop :=
  ∀ n, P14807822579696843251.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P2155363718305016762

`A022559(eq[1, A032741(n)])`
-/

namespace A080084.P2155363718305016762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080084.P2155363718305016762

namespace A080084

/-- `A022559(eq[1, A032741(n)])` -/
def P2155363718305016762.Spec : Prop :=
  ∀ n, P2155363718305016762.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P1565332101722163839

`A022559(record[A039649(n+1)])`
-/

namespace A080084.P1565332101722163839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P1565332101722163839

namespace A080084

/-- `A022559(record[A039649(n+1)])` -/
def P1565332101722163839.Spec : Prop :=
  ∀ n, P1565332101722163839.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P5960811715527903791

`A344572(record[A006530(n+2)])`
-/

namespace A080084.P5960811715527903791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P5960811715527903791

namespace A080084

/-- `A344572(record[A006530(n+2)])` -/
def P5960811715527903791.Spec : Prop :=
  ∀ n, P5960811715527903791.a n = A080084 (n + 1)

end A080084

/-! ## A080084.P6071194365403638167

`A344572(record[A020639(n+2)])`
-/

namespace A080084.P6071194365403638167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344572 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080084.P6071194365403638167

namespace A080084

/-- `A344572(record[A020639(n+2)])` -/
def P6071194365403638167.Spec : Prop :=
  ∀ n, P6071194365403638167.a n = A080084 (n + 1)

end A080084

/-!
# A080085: Number of factors of 2 in the factorial of the n-th prime, counted with multiplicity.

The programs for A080085, the canonical program `A080085.P4216384539738297619` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080085 has offset 1).

The definition of A080085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080085.P4216384539738297619

`A000040(n+1)-A014499(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080085

/-- `A000040(n+1)-A014499(n+1)` -/
def P4216384539738297619.Spec : Prop :=
  ∀ n, P4216384539738297619.a n = A080085 (n + 1)

theorem P4216384539738297619.correct : P4216384539738297619.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel]

end A080085

/-! ## A080085.P13657877035246233887

`1+A294898(A000040(n+1))`
-/

namespace A080085.P13657877035246233887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A294898 (A000040 (n + 1)).toNat

end

end A080085.P13657877035246233887

namespace A080085

/-- `1+A294898(A000040(n+1))` -/
def P13657877035246233887.Spec : Prop :=
  ∀ n, P13657877035246233887.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P11807090846729028705

`A276133(n)+a(n-1)` with `a(0)=1`
-/

namespace A080085.P11807090846729028705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276133 n + a (n - 1)

end

end A080085.P11807090846729028705

namespace A080085

/-- `A276133(n)+a(n-1)` -/
def P11807090846729028705.Spec : Prop :=
  ∀ n, P11807090846729028705.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P7110520307611083423

`Δ[A007504(n)]-A014499(n+1)`
-/

namespace A080085.P7110520307611083423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014499 (n + 1)

end

end A080085.P7110520307611083423

namespace A080085

/-- `Δ[A007504(n)]-A014499(n+1)` -/
def P7110520307611083423.Spec : Prop :=
  ∀ n, P7110520307611083423.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P12364678253152467784

`A163293(n+1)+A035103(n+1)`
-/

namespace A080085.P12364678253152467784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163293 (n + 1) + A035103 (n + 1)

end

end A080085.P12364678253152467784

namespace A080085

/-- `A163293(n+1)+A035103(n+1)` -/
def P12364678253152467784.Spec : Prop :=
  ∀ n, P12364678253152467784.a n = A080085 (n + 1)

theorem P12364678253152467784.correct : P12364678253152467784.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel, A080085.P12364678253152467784.a, A080085.P4216384539738297619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035103, A035103.P1324719609663575418.a, A163293, A163293.P4247609805888595491.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080085

/-! ## A080085.P2616412299420292377

`A084421(n+1)-A000040(n+1)`
-/

namespace A080085.P2616412299420292377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084421 (n + 1) - A000040 (n + 1)

end

end A080085.P2616412299420292377

namespace A080085

/-- `A084421(n+1)-A000040(n+1)` -/
def P2616412299420292377.Spec : Prop :=
  ∀ n, P2616412299420292377.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P13825933363309368930

`A177959(n+1)-A372516(n+1)`
-/

namespace A080085.P13825933363309368930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (n + 1) - A372516 (n + 1)

end

end A080085.P13825933363309368930

namespace A080085

/-- `A177959(n+1)-A372516(n+1)` -/
def P13825933363309368930.Spec : Prop :=
  ∀ n, P13825933363309368930.a n = A080085 (n + 1)

theorem P13825933363309368930.correct : P13825933363309368930.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel, A080085.P13825933363309368930.a, A080085.P4216384539738297619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A177959, A177959.P3892879503494814762.a, A372516, A372516.P8084116944890719171.a, A000120, A000120.P2816527436160941581.a, A035103, A035103.P1324719609663575418.a, A005187, A005187.P3874015513960485494.a, A035100, A035100.P16711503485959756516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080085

/-! ## A080085.P7879943946254526897

`A006093(n+1)+1-A014499(n+1)`
-/

namespace A080085.P7879943946254526897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A014499 (n + 1))

end

end A080085.P7879943946254526897

namespace A080085

/-- `A006093(n+1)+1-A014499(n+1)` -/
def P7879943946254526897.Spec : Prop :=
  ∀ n, P7879943946254526897.a n = A080085 (n + 1)

theorem P7879943946254526897.correct : P7879943946254526897.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel, A080085.P7879943946254526897.a, A080085.P4216384539738297619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014499, A014499.P9770580101482900462.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080085

/-! ## A080085.P14595638248232700234

`A100484(n+1)/2-A014499(n+1)`
-/

namespace A080085.P14595638248232700234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A014499 (n + 1) : ℚ)

end

end A080085.P14595638248232700234

namespace A080085

/-- `A100484(n+1)/2-A014499(n+1)` -/
def P14595638248232700234.Spec : Prop :=
  ∀ n, P14595638248232700234.a n = (A080085 (n + 1) : ℚ)

theorem P14595638248232700234.correct : P14595638248232700234.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel, A080085.P14595638248232700234.a, A080085.P4216384539738297619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A100484, A100484.P9678625670825099636.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080085

/-! ## A080085.P15910477355666486425

`A084421(n+1)-A100484(n+1)/2`
-/

namespace A080085.P15910477355666486425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084421 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A080085.P15910477355666486425

namespace A080085

/-- `A084421(n+1)-A100484(n+1)/2` -/
def P15910477355666486425.Spec : Prop :=
  ∀ n, P15910477355666486425.a n = (A080085 (n + 1) : ℚ)

end A080085

/-! ## A080085.P15170562331939007694

`A065073(n+1)-(A014499(n+1)+A007605(n+1))`
-/

namespace A080085.P15170562331939007694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1) - (A014499 (n + 1) + A007605 (n + 1))

end

end A080085.P15170562331939007694

namespace A080085

/-- `A065073(n+1)-(A014499(n+1)+A007605(n+1))` -/
def P15170562331939007694.Spec : Prop :=
  ∀ n, P15170562331939007694.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P9909742507759852528

`A035103(n+1)+A177959(n+1)-A014499(n+1)`
-/

namespace A080085.P9909742507759852528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1) + (A177959 (n + 1) - A014499 (n + 1))

end

end A080085.P9909742507759852528

namespace A080085

/-- `A035103(n+1)+A177959(n+1)-A014499(n+1)` -/
def P9909742507759852528.Spec : Prop :=
  ∀ n, P9909742507759852528.a n = A080085 (n + 1)

theorem P9909742507759852528.correct : P9909742507759852528.Spec := by
  intro n
  simp only [A080085, Nat.add_sub_cancel, A080085.P9909742507759852528.a, A080085.P4216384539738297619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035103, A035103.P1324719609663575418.a, A177959, A177959.P3892879503494814762.a, A000120, A000120.P2816527436160941581.a, A035100, A035100.P16711503485959756516.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080085

/-! ## A080085.P4640566915477681968

`A008578(n+2)-A014499(n+1)`
-/

namespace A080085.P4640566915477681968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A014499 (n + 1)

end

end A080085.P4640566915477681968

namespace A080085

/-- `A008578(n+2)-A014499(n+1)` -/
def P4640566915477681968.Spec : Prop :=
  ∀ n, P4640566915477681968.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P15439016348635632040

`A085818(A085971(n+1))-A014499(n+1)`
-/

namespace A080085.P15439016348635632040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (A085971 (n + 1)).toNat - A014499 (n + 1)

end

end A080085.P15439016348635632040

namespace A080085

/-- `A085818(A085971(n+1))-A014499(n+1)` -/
def P15439016348635632040.Spec : Prop :=
  ∀ n, P15439016348635632040.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P4753183428407940043

`A005187(A130290(n+1))`
-/

namespace A080085.P4753183428407940043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A130290 (n + 1)).toNat

end

end A080085.P4753183428407940043

namespace A080085

/-- `A005187(A130290(n+1))` -/
def P4753183428407940043.Spec : Prop :=
  ∀ n, P4753183428407940043.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P7677813535238946822

`A317844(2*A000040(n+1))+1`
-/

namespace A080085.P7677813535238946822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317844 (2 * A000040 (n + 1)).toNat + 1

end

end A080085.P7677813535238946822

namespace A080085

/-- `A317844(2*A000040(n+1))+1` -/
def P7677813535238946822.Spec : Prop :=
  ∀ n, P7677813535238946822.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P13377319056509890835

`A318447(2*A000040(n+1))+1`
-/

namespace A080085.P13377319056509890835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318447 (2 * A000040 (n + 1)).toNat + 1

end

end A080085.P13377319056509890835

namespace A080085

/-- `A318447(2*A000040(n+1))+1` -/
def P13377319056509890835.Spec : Prop :=
  ∀ n, P13377319056509890835.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P7041104159990982307

`A078896(A006093(n+1))`
-/

namespace A080085.P7041104159990982307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A006093 (n + 1)).toNat

end

end A080085.P7041104159990982307

namespace A080085

/-- `A078896(A006093(n+1))` -/
def P7041104159990982307.Spec : Prop :=
  ∀ n, P7041104159990982307.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P17332074077326888791

`A078896(A156037(n+1))`
-/

namespace A080085.P17332074077326888791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A156037 (n + 1)).toNat

end

end A080085.P17332074077326888791

namespace A080085

/-- `A078896(A156037(n+1))` -/
def P17332074077326888791.Spec : Prop :=
  ∀ n, P17332074077326888791.a n = A080085 (n + 1)

end A080085

/-! ## A080085.P14754266014911622072

`A078896(record[A000010(n+1)])`
-/

namespace A080085.P14754266014911622072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080085.P14754266014911622072

namespace A080085

/-- `A078896(record[A000010(n+1)])` -/
def P14754266014911622072.Spec : Prop :=
  ∀ n, P14754266014911622072.a n = A080085 (n + 1)

end A080085

/-!
# A080086: Number of factors of 3 in the factorial of the n-th prime, counted with multiplicity.

The programs for A080086, the canonical program `A080086.P10803025907538498928` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080086 has offset 1).

The definition of A080086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080086.P10803025907538498928

`A276376(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080086

/-- `A276376(n)+a(n-1)` -/
def P10803025907538498928.Spec : Prop :=
  ∀ n, P10803025907538498928.a n = A080086 (n + 1)

theorem P10803025907538498928.correct : P10803025907538498928.Spec := by
  intro n
  simp only [A080086, Nat.add_sub_cancel]

end A080086

/-! ## A080086.P2217420804316826923

`A004128(A144769(n+1))`
-/

namespace A080086.P2217420804316826923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A144769 (n + 1)).toNat

end

end A080086.P2217420804316826923

namespace A080086

/-- `A004128(A144769(n+1))` -/
def P2217420804316826923.Spec : Prop :=
  ∀ n, P2217420804316826923.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P7609103283536080913

`A054861(p?[comp[n²]])`
-/

namespace A080086.P7609103283536080913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080086.P7609103283536080913

namespace A080086

/-- `A054861(p?[comp[n²]])` -/
def P7609103283536080913.Spec : Prop :=
  ∀ n, P7609103283536080913.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P8739587020689503876

`∑{d}[p?[xor(1, n)+1], A054861(#)]`
-/

namespace A080086.P8739587020689503876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054861 d

end

end A080086.P8739587020689503876

namespace A080086

/-- `∑{d}[p?[xor(1, n)+1], A054861(#)]` -/
def P8739587020689503876.Spec : Prop :=
  ∀ n, P8739587020689503876.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P9237847540035121872

`A054861(∏{d}[p?[xor(1, n)+1], #])`
-/

namespace A080086.P9237847540035121872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A080086.P9237847540035121872

namespace A080086

/-- `A054861(∏{d}[p?[xor(1, n)+1], #])` -/
def P9237847540035121872.Spec : Prop :=
  ∀ n, P9237847540035121872.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P8845242882175024682

`A054861(∑{p}[p?[xor(1, n)+1], #])`
-/

namespace A080086.P8845242882175024682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A080086.P8845242882175024682

namespace A080086

/-- `A054861(∑{p}[p?[xor(1, n)+1], #])` -/
def P8845242882175024682.Spec : Prop :=
  ∀ n, P8845242882175024682.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P10676388645590398586

`A054861(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A080086.P10676388645590398586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A080086.P10676388645590398586

namespace A080086

/-- `A054861(∏{p}[p?[xor(1, n)+1], #])` -/
def P10676388645590398586.Spec : Prop :=
  ∀ n, P10676388645590398586.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P15495074086096714958

`A054861(and(p?[xor(1, n)+1], -1))`
-/

namespace A080086.P15495074086096714958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A080086.P15495074086096714958

namespace A080086

/-- `A054861(and(p?[xor(1, n)+1], -1))` -/
def P15495074086096714958.Spec : Prop :=
  ∀ n, P15495074086096714958.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P18377565258980301573

`A054861(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A080086.P18377565258980301573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A080086.P18377565258980301573

namespace A080086

/-- `A054861(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])` -/
def P18377565258980301573.Spec : Prop :=
  ∀ n, P18377565258980301573.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P7913593128486193060

`A054861(A000040(n+1))`
-/

namespace A080086.P7913593128486193060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A000040 (n + 1)).toNat

end

end A080086.P7913593128486193060

namespace A080086

/-- `A054861(A000040(n+1))` -/
def P7913593128486193060.Spec : Prop :=
  ∀ n, P7913593128486193060.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P2178801697142588253

`A054861(A006005(n+1))`
-/

namespace A080086.P2178801697142588253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A006005 (n + 1)).toNat

end

end A080086.P2178801697142588253

namespace A080086

/-- `A054861(A006005(n+1))` -/
def P2178801697142588253.Spec : Prop :=
  ∀ n, P2178801697142588253.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P17366415474158671107

`A054861(A008578(n+2))`
-/

namespace A080086.P17366415474158671107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A008578 (n + 2)).toNat

end

end A080086.P17366415474158671107

namespace A080086

/-- `A054861(A008578(n+2))` -/
def P17366415474158671107.Spec : Prop :=
  ∀ n, P17366415474158671107.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P10708228909363047815

`A054861(A068499(n+2))`
-/

namespace A080086.P10708228909363047815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A068499 (n + 2)).toNat

end

end A080086.P10708228909363047815

namespace A080086

/-- `A054861(A068499(n+2))` -/
def P10708228909363047815.Spec : Prop :=
  ∀ n, P10708228909363047815.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P5930044061838408349

`A054861(A075643(n+2))`
-/

namespace A080086.P5930044061838408349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A075643 (n + 2)).toNat

end

end A080086.P5930044061838408349

namespace A080086

/-- `A054861(A075643(n+2))` -/
def P5930044061838408349.Spec : Prop :=
  ∀ n, P5930044061838408349.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P6874988452511821802

`A054861(A182986(n+2))`
-/

namespace A080086.P6874988452511821802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A182986 (n + 2)).toNat

end

end A080086.P6874988452511821802

namespace A080086

/-- `A054861(A182986(n+2))` -/
def P6874988452511821802.Spec : Prop :=
  ∀ n, P6874988452511821802.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P14209367157141279372

`A397801(A001749(n+1))`
-/

namespace A080086.P14209367157141279372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397801 (A001749 (n + 1)).toNat

end

end A080086.P14209367157141279372

namespace A080086

/-- `A397801(A001749(n+1))` -/
def P14209367157141279372.Spec : Prop :=
  ∀ n, P14209367157141279372.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P12204708013490693220

`A397801(A062876(n+1))`
-/

namespace A080086.P12204708013490693220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397801 (A062876 (n + 1)).toNat

end

end A080086.P12204708013490693220

namespace A080086

/-- `A397801(A062876(n+1))` -/
def P12204708013490693220.Spec : Prop :=
  ∀ n, P12204708013490693220.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P855883864094161361

`A054861(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A080086.P855883864094161361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A080086.P855883864094161361

namespace A080086

/-- `A054861(∑{p}[p?[round(8*n/7)]², #])` -/
def P855883864094161361.Spec : Prop :=
  ∀ n, P855883864094161361.a n = A080086 (n + 1)

end A080086

/-! ## A080086.P7671869835151222875

`A054861(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A080086.P7671869835151222875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A080086.P7671869835151222875

namespace A080086

/-- `A054861(∏{p}[p?[round(8*n/7)]², #])` -/
def P7671869835151222875.Spec : Prop :=
  ∀ n, P7671869835151222875.a n = A080086 (n + 1)

end A080086

/-!
# A080087: Number of factors of 5 in the factorial of the n-th prime, counted with multiplicity.

The programs for A080087, the canonical program `A080087.P17461455938318532576` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080087 has offset 1).

The definition of A080087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080087.P17461455938318532576

`A027868(p?[xor(1, n)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080087

/-- `A027868(p?[xor(1, n)])` -/
def P17461455938318532576.Spec : Prop :=
  ∀ n, P17461455938318532576.a n = A080087 (n + 1)

theorem P17461455938318532576.correct : P17461455938318532576.Spec := by
  intro n
  simp only [A080087, Nat.add_sub_cancel]

end A080087

/-! ## A080087.P3762256550931540588

`A027868(p?[comp[n²]])`
-/

namespace A080087.P3762256550931540588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080087.P3762256550931540588

namespace A080087

/-- `A027868(p?[comp[n²]])` -/
def P3762256550931540588.Spec : Prop :=
  ∀ n, P3762256550931540588.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P2436592654832964909

`∑{p}[3*p?[round(8*n/7)], A027868(#)]`
-/

namespace A080087.P2436592654832964909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A027868 p

end

end A080087.P2436592654832964909

namespace A080087

/-- `∑{p}[3*p?[round(8*n/7)], A027868(#)]` -/
def P2436592654832964909.Spec : Prop :=
  ∀ n, P2436592654832964909.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P4634583666235258183

`A027868(Δ[A007504(n)])`
-/

namespace A080087.P4634583666235258183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (n + 1) - f1 n).toNat

end

end A080087.P4634583666235258183

namespace A080087

/-- `A027868(Δ[A007504(n)])` -/
def P4634583666235258183.Spec : Prop :=
  ∀ n, P4634583666235258183.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P13025877394852345794

`A027868(A000040(n+1))`
-/

namespace A080087.P13025877394852345794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000040 (n + 1)).toNat

end

end A080087.P13025877394852345794

namespace A080087

/-- `A027868(A000040(n+1))` -/
def P13025877394852345794.Spec : Prop :=
  ∀ n, P13025877394852345794.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P4770132094692503444

`A027868(A006005(n+1))`
-/

namespace A080087.P4770132094692503444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006005 (n + 1)).toNat

end

end A080087.P4770132094692503444

namespace A080087

/-- `A027868(A006005(n+1))` -/
def P4770132094692503444.Spec : Prop :=
  ∀ n, P4770132094692503444.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P1768264432654770387

`A027868(A171577(n+1))`
-/

namespace A080087.P1768264432654770387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A171577 (n + 1)).toNat

end

end A080087.P1768264432654770387

namespace A080087

/-- `A027868(A171577(n+1))` -/
def P1768264432654770387.Spec : Prop :=
  ∀ n, P1768264432654770387.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P15609964854299981557

`A027868(A008578(n+2))`
-/

namespace A080087.P15609964854299981557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A008578 (n + 2)).toNat

end

end A080087.P15609964854299981557

namespace A080087

/-- `A027868(A008578(n+2))` -/
def P15609964854299981557.Spec : Prop :=
  ∀ n, P15609964854299981557.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P11606131654092897964

`A027868(A075643(n+2))`
-/

namespace A080087.P11606131654092897964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A075643 (n + 2)).toNat

end

end A080087.P11606131654092897964

namespace A080087

/-- `A027868(A075643(n+2))` -/
def P11606131654092897964.Spec : Prop :=
  ∀ n, P11606131654092897964.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P3941407884796688801

`A027868(A171525(n+2))`
-/

namespace A080087.P3941407884796688801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A171525 (n + 2)).toNat

end

end A080087.P3941407884796688801

namespace A080087

/-- `A027868(A171525(n+2))` -/
def P3941407884796688801.Spec : Prop :=
  ∀ n, P3941407884796688801.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P4283783515197013038

`A027868(A175787(n+2))`
-/

namespace A080087.P4283783515197013038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A175787 (n + 2)).toNat

end

end A080087.P4283783515197013038

namespace A080087

/-- `A027868(A175787(n+2))` -/
def P4283783515197013038.Spec : Prop :=
  ∀ n, P4283783515197013038.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P17707668011208091039

`A027868(A182986(n+2))`
-/

namespace A080087.P17707668011208091039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A182986 (n + 2)).toNat

end

end A080087.P17707668011208091039

namespace A080087

/-- `A027868(A182986(n+2))` -/
def P17707668011208091039.Spec : Prop :=
  ∀ n, P17707668011208091039.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P9191588177423150597

`A027868(eq[2, A005127(n)])`
-/

namespace A080087.P9191588177423150597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080087.P9191588177423150597

namespace A080087

/-- `A027868(eq[2, A005127(n)])` -/
def P9191588177423150597.Spec : Prop :=
  ∀ n, P9191588177423150597.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P15401107947717794935

`A027868(A006093(n+1)+1)`
-/

namespace A080087.P15401107947717794935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006093 (n + 1) + 1).toNat

end

end A080087.P15401107947717794935

namespace A080087

/-- `A027868(A006093(n+1)+1)` -/
def P15401107947717794935.Spec : Prop :=
  ∀ n, P15401107947717794935.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P547729433772175183

`A027868(A068395(n+1)+A007605(n+1))`
-/

namespace A080087.P547729433772175183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A068395 (n + 1) + A007605 (n + 1)).toNat

end

end A080087.P547729433772175183

namespace A080087

/-- `A027868(A068395(n+1)+A007605(n+1))` -/
def P547729433772175183.Spec : Prop :=
  ∀ n, P547729433772175183.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P400825370911000873

`A027868(eq[2, A053204(n)])`
-/

namespace A080087.P400825370911000873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080087.P400825370911000873

namespace A080087

/-- `A027868(eq[2, A053204(n)])` -/
def P400825370911000873.Spec : Prop :=
  ∀ n, P400825370911000873.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P11696125691667327197

`A027868(eq[2, A353851(n)])`
-/

namespace A080087.P11696125691667327197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080087.P11696125691667327197

namespace A080087

/-- `A027868(eq[2, A353851(n)])` -/
def P11696125691667327197.Spec : Prop :=
  ∀ n, P11696125691667327197.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P1395659352002950709

`A027868(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A080087.P1395659352002950709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A080087.P1395659352002950709

namespace A080087

/-- `A027868(∑{p}[p?[round(8*n/7)]², #])` -/
def P1395659352002950709.Spec : Prop :=
  ∀ n, P1395659352002950709.a n = A080087 (n + 1)

end A080087

/-! ## A080087.P5129822779799881919

`A027868(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A080087.P5129822779799881919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A080087.P5129822779799881919

namespace A080087

/-- `A027868(∏{p}[p?[round(8*n/7)]², #])` -/
def P5129822779799881919.Spec : Prop :=
  ∀ n, P5129822779799881919.a n = A080087 (n + 1)

end A080087

/-!
# A080088: Let r+i*s be the sum of the first-quadrant Gaussian primes dividing prime(n); sequence gives r values.

The programs for A080088, there is no canonical definition to state claims against.
-/

/-! ## A080088.P8176756309380245737

`A078908(p?[comp[n²]])`
-/

namespace A080088.P8176756309380245737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080088.P8176756309380245737

/-! ## A080088.P2110521805347072312

`A078908(A000040(n+1))`
-/

namespace A080088.P2110521805347072312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A000040 (n + 1)).toNat

end

end A080088.P2110521805347072312

/-! ## A080088.P7753060477843167015

`A078908(A008578(n+2))`
-/

namespace A080088.P7753060477843167015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A008578 (n + 2)).toNat

end

end A080088.P7753060477843167015

/-! ## A080088.P13962971257273724287

`A078908(A182986(n+2))`
-/

namespace A080088.P13962971257273724287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (A182986 (n + 2)).toNat

end

end A080088.P13962971257273724287

/-! ## A080088.P4641045207556831952

`A078908(record[A006530(n+2)])`
-/

namespace A080088.P4641045207556831952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P4641045207556831952

/-! ## A080088.P2793559050073437931

`A078908(record[A008472(n+2)])`
-/

namespace A080088.P2793559050073437931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P2793559050073437931

/-! ## A080088.P5317207326067891226

`A078908(record[A014963(n+2)])`
-/

namespace A080088.P5317207326067891226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P5317207326067891226

/-! ## A080088.P14646034119855864282

`A078908(record[A020639(n+2)])`
-/

namespace A080088.P14646034119855864282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P14646034119855864282

/-! ## A080088.P10631071577274232777

`A078908(record[A000010(n+1)+1])`
-/

namespace A080088.P10631071577274232777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P10631071577274232777

/-! ## A080088.P12887446484519920628

`A078908(record[p?[A078898(n)]])`
-/

namespace A080088.P12887446484519920628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080088.P12887446484519920628

/-!
# A080089: Let r+i*s be the sum of the first-quadrant Gaussian primes dividing prime(n); sequence gives s values.

The programs for A080089, there is no canonical definition to state claims against.
-/

/-! ## A080089.P7958806188082257595

`A080088(n+1)*A098033(n+1)`
-/

namespace A080089.P7958806188082257595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080088 (n + 1) * A098033 (n + 1)

end

end A080089.P7958806188082257595

/-! ## A080089.P9944546846868911059

`A078909(p?[comp[n²]])`
-/

namespace A080089.P9944546846868911059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080089.P9944546846868911059

/-! ## A080089.P2829089839611065376

`A078909(Δ[A007504(n)])`
-/

namespace A080089.P2829089839611065376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (n + 1) - f1 n).toNat

end

end A080089.P2829089839611065376

/-! ## A080089.P216656322253696273

`A078909(A000040(n+1))`
-/

namespace A080089.P216656322253696273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (A000040 (n + 1)).toNat

end

end A080089.P216656322253696273

/-! ## A080089.P9053765191241015266

`A133388(A100484(n+1))`
-/

namespace A080089.P9053765191241015266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A100484 (n + 1)).toNat

end

end A080089.P9053765191241015266

/-! ## A080089.P6327855357466600741

`A078909(A008578(n+2))`
-/

namespace A080089.P6327855357466600741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (A008578 (n + 2)).toNat

end

end A080089.P6327855357466600741

/-! ## A080089.P7414654774492187364

`A133388(A001747(n+2))`
-/

namespace A080089.P7414654774492187364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A001747 (n + 2)).toNat

end

end A080089.P7414654774492187364

/-! ## A080089.P6996129946543708081

`A078909(A182986(n+2))`
-/

namespace A080089.P6996129946543708081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (A182986 (n + 2)).toNat

end

end A080089.P6996129946543708081

/-! ## A080089.P3210407839691215643

`A078909(record[A006530(n+2)])`
-/

namespace A080089.P3210407839691215643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080089.P3210407839691215643

/-! ## A080089.P1893464144031314980

`A078909(record[A014963(n+2)])`
-/

namespace A080089.P1893464144031314980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080089.P1893464144031314980

/-! ## A080089.P14760674253312256587

`A078909(record[A020639(n+2)])`
-/

namespace A080089.P14760674253312256587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080089.P14760674253312256587

/-! ## A080089.P17761784109110592112

`A133388(2*A000040(n+1))`
-/

namespace A080089.P17761784109110592112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (2 * A000040 (n + 1)).toNat

end

end A080089.P17761784109110592112

/-! ## A080089.P14630353240017261065

`A080088(n+1)%A220861(n+1)`
-/

namespace A080089.P14630353240017261065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080088 (n + 1)) (A220861 (n + 1))

end

end A080089.P14630353240017261065

/-! ## A080089.P17057996531118803812

`A078909(record[p?[A078898(n)]])`
-/

namespace A080089.P17057996531118803812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080089.P17057996531118803812

/-! ## A080089.P3614645121321092900

`A078909(A001748(n+1))`
-/

namespace A080089.P3614645121321092900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (A001748 (n + 1)).toNat

end

end A080089.P3614645121321092900

/-! ## A080089.P11133523534043791945

`A078909(A112773(n+2))`
-/

namespace A080089.P11133523534043791945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078909 (A112773 (n + 2)).toNat

end

end A080089.P11133523534043791945

/-! ## A080089.P5739485455074861970

`A362961(A072900(n+1))`
-/

namespace A080089.P5739485455074861970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362961 (A072900 (n + 1)).toNat

end

end A080089.P5739485455074861970

/-! ## A080089.P9107491863271203760

`A099380(p?[comp[n²]])`
-/

namespace A080089.P9107491863271203760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080089.P9107491863271203760

/-! ## A080089.P3189043340953861862

`A099380(eq[1, A003415(n)])`
-/

namespace A080089.P3189043340953861862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080089.P3189043340953861862

/-! ## A080089.P9878438552400545036

`A099380(eq[1, A032741(n)])`
-/

namespace A080089.P9878438552400545036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080089.P9878438552400545036

/-!
# A080092: Irregular triangle read by rows, giving prime sequences (p-1|2n) appearing in the n-th von Staudt-Clausen sum.

The programs for A080092, the canonical program `A080092.P1141059548858687428` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080092 has offset 1).

The definition of A080092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080092.P1141059548858687428

`p?[A138239(abs(1-n))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A080092

/-- `p?[A138239(abs(1-n))]` -/
def P1141059548858687428.Spec : Prop :=
  ∀ n, P1141059548858687428.a n = A080092 (n + 1)

theorem P1141059548858687428.correct : P1141059548858687428.Spec := by
  intro n
  simp only [A080092, Nat.add_sub_cancel]

end A080092

/-! ## A080092.P9555001790689593920

`p?[floor(A138239(n)+acot(n))]`
-/

namespace A080092.P9555001790689593920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138239 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P9555001790689593920

namespace A080092

/-- `p?[floor(A138239(n)+acot(n))]` -/
def P9555001790689593920.Spec : Prop :=
  ∀ n, P9555001790689593920.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P1335766457488322375

`p?[A138239(n)+A000007(n)]`
-/

namespace A080092.P1335766457488322375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138239 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P1335766457488322375

namespace A080092

/-- `p?[A138239(n)+A000007(n)]` -/
def P1335766457488322375.Spec : Prop :=
  ∀ n, P1335766457488322375.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P15280329964406051423

`p?[A054977(n)*A138239(n)]`
-/

namespace A080092.P15280329964406051423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A138239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P15280329964406051423

namespace A080092

/-- `p?[A054977(n)*A138239(n)]` -/
def P15280329964406051423.Spec : Prop :=
  ∀ n, P15280329964406051423.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P16089438959275035232

`p?[lcm(A138239(n), A141044(n))]`
-/

namespace A080092.P16089438959275035232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138239 n) (A141044 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A080092.P16089438959275035232

namespace A080092

/-- `p?[lcm(A138239(n), A141044(n))]` -/
def P16089438959275035232.Spec : Prop :=
  ∀ n, (P16089438959275035232.a n : ℤ) = A080092 (n + 1)

end A080092

/-! ## A080092.P6205709057108937672

`p?[A138239(n)*A141044(n+1)]`
-/

namespace A080092.P6205709057108937672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138239 n * A141044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P6205709057108937672

namespace A080092

/-- `p?[A138239(n)*A141044(n+1)]` -/
def P6205709057108937672.Spec : Prop :=
  ∀ n, P6205709057108937672.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P6019413345777561529

`p?[A000124(C(2, n+2))*A138239(n)]`
-/

namespace A080092.P6019413345777561529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Nat.choose 2 (n + 2)) * A138239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P6019413345777561529

namespace A080092

/-- `p?[A000124(C(2, n+2))*A138239(n)]` -/
def P6019413345777561529.Spec : Prop :=
  ∀ n, P6019413345777561529.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P11687958840967926868

`p?[A138243(n)]`
-/

namespace A080092.P11687958840967926868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080092.P11687958840967926868

namespace A080092

/-- `p?[A138243(n)]` -/
def P11687958840967926868.Spec : Prop :=
  ∀ n, P11687958840967926868.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P7000353629975317915

`A138239(lt[1, A138243(n)])`
-/

namespace A080092.P7000353629975317915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A080092.P7000353629975317915

namespace A080092

/-- `A138239(lt[1, A138243(n)])` -/
def P7000353629975317915.Spec : Prop :=
  ∀ n, P7000353629975317915.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P7089760449497047387

`A138243(lt[1, A138243(n)])`
-/

namespace A080092.P7089760449497047387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A080092.P7089760449497047387

namespace A080092

/-- `A138243(lt[1, A138243(n)])` -/
def P7089760449497047387.Spec : Prop :=
  ∀ n, P7089760449497047387.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P17151469707573550695

`filter[A138243(n), A010051(#)]`
-/

namespace A080092.P17151469707573550695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080092.P17151469707573550695

namespace A080092

/-- `filter[A138243(n), A010051(#)]` -/
def P17151469707573550695.Spec : Prop :=
  ∀ n, P17151469707573550695.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P12558301850447901347

`filter[A138243(n), A014306(#)]`
-/

namespace A080092.P12558301850447901347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A080092.P12558301850447901347

namespace A080092

/-- `filter[A138243(n), A014306(#)]` -/
def P12558301850447901347.Spec : Prop :=
  ∀ n, P12558301850447901347.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P16060673208684579332

`filter[A138243(n), A049240(#)]`
-/

namespace A080092.P16060673208684579332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A080092.P16060673208684579332

namespace A080092

/-- `filter[A138243(n), A049240(#)]` -/
def P16060673208684579332.Spec : Prop :=
  ∀ n, P16060673208684579332.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P2705997340858012383

`filter[A138243(n), A053867(#)]`
-/

namespace A080092.P2705997340858012383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A080092.P2705997340858012383

namespace A080092

/-- `filter[A138243(n), A053867(#)]` -/
def P2705997340858012383.Spec : Prop :=
  ∀ n, P2705997340858012383.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P15410183927260912062

`filter[A138243(n), A066829(#)]`
-/

namespace A080092.P15410183927260912062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A080092.P15410183927260912062

namespace A080092

/-- `filter[A138243(n), A066829(#)]` -/
def P15410183927260912062.Spec : Prop :=
  ∀ n, P15410183927260912062.a n = A080092 (n + 1)

end A080092

/-! ## A080092.P155092089589799258

`filter[A138243(n), A069513(#)]`
-/

namespace A080092.P155092089589799258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A080092.P155092089589799258

namespace A080092

/-- `filter[A138243(n), A069513(#)]` -/
def P155092089589799258.Spec : Prop :=
  ∀ n, P155092089589799258.a n = A080092 (n + 1)

end A080092

/-!
# A080093: Let sum(k>=0, k^n/(2*k+1)!) = (x(n)*e + y(n)/e)/z(n), where x(n) and z(n) are >0, then a(n)=x(n).

The programs for A080093, there is no canonical definition to state claims against.
-/

/-! ## A080093.P1854594730717204724

`A000296(n+1)/Δ[A042965(n+2)]`
-/

namespace A080093.P1854594730717204724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A080093.P1854594730717204724

/-! ## A080093.P2605610184969487078

`A000296(n+1)/gcd(2, A000296(2*n+1))`
-/

namespace A080093.P2605610184969487078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (n + 1) : ℚ) / (Int.gcd 2 (A000296 (2 * n + 1)) : ℚ)

end

end A080093.P2605610184969487078

/-! ## A080093.P15379784596511520948

`A000296(n+1)/A260228(A005901(n))`
-/

namespace A080093.P15379784596511520948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (n + 1) : ℚ) / (A260228 (A005901 n).toNat : ℚ)

end

end A080093.P15379784596511520948

/-! ## A080093.P15181619953493395168

`A000296(n+1)/A100261(A046092(n+1))`
-/

namespace A080093.P15181619953493395168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (n + 1) : ℚ) / (A100261 (A046092 (n + 1)).toNat : ℚ)

end

end A080093.P15181619953493395168

/-! ## A080093.P9136191704052218776

`A000296(n+1)/A131534(A046092(2*(n+2)))`
-/

namespace A080093.P9136191704052218776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (n + 1) : ℚ) / (A131534 (A046092 (2 * (n + 2))).toNat : ℚ)

end

end A080093.P9136191704052218776

/-!
# A080095: Let sum(k>=0, k^n/(2*k+1)!) = (x(n)*e + y(n)/e)/z(n), where x(n) and z(n) are >0, then a(n)=z(n).

The programs for A080095, the canonical program `A080095.P15324101628598950293` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080095 has offset 1).

The definition of A080095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080095.P15324101628598950293

`8*a(n-3)` with `a(0)=2, a(1)=8, a(2)=16`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080095

/-- `8*a(n-3)` -/
def P15324101628598950293.Spec : Prop :=
  ∀ n, (P15324101628598950293.a n : ℤ) = A080095 (n + 1)

theorem P15324101628598950293.correct : P15324101628598950293.Spec := by
  intro n
  simp only [A080095, Nat.add_sub_cancel]

end A080095

/-! ## A080095.P806008562493245046

`(5-gcd(3, n))*2^n`
-/

namespace A080095.P806008562493245046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (Nat.gcd 3 n : ℤ)) * (2 ^ n : ℤ)

end

end A080095.P806008562493245046

namespace A080095

/-- `(5-gcd(3, n))*2^n` -/
def P806008562493245046.Spec : Prop :=
  ∀ n, P806008562493245046.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P5656704995965709624

`2*∏[(4^dr(n))%7]`
-/

namespace A080095.P5656704995965709624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.digitalRoot (n : ℤ) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A080095.P5656704995965709624

namespace A080095

/-- `2*∏[(4^dr(n))%7]` -/
def P5656704995965709624.Spec : Prop :=
  ∀ n, (P5656704995965709624.a n : ℤ) = A080095 (n + 1)

end A080095

/-! ## A080095.P3294439346301129099

`∏[abs(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A080095.P3294439346301129099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080095.P3294439346301129099

namespace A080095

/-- `∏[abs(a(n-3))]` -/
def P3294439346301129099.Spec : Prop :=
  ∀ n, (P3294439346301129099.a n : ℤ) = A080095 (n + 1)

end A080095

/-! ## A080095.P10029634002148718761

`∏[dr(a(n-3))]` with `a(0)=2, a(1)=4, a(2)=2, a(3)=1`
-/

namespace A080095.P10029634002148718761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 2, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080095.P10029634002148718761

namespace A080095

/-- `∏[dr(a(n-3))]` -/
def P10029634002148718761.Spec : Prop :=
  ∀ n, (P10029634002148718761.a n : ℤ) = A080095 (n + 1)

end A080095

/-! ## A080095.P10913036324180885520

`2^(∑[(2*n)%3]+1)`
-/

namespace A080095.P10913036324180885520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A080095.P10913036324180885520

namespace A080095

/-- `2^(∑[(2*n)%3]+1)` -/
def P10913036324180885520.Spec : Prop :=
  ∀ n, (P10913036324180885520.a n : ℤ) = A080095 (n + 1)

end A080095

/-! ## A080095.P8274863358856501561

`2^(n²%3+n+1)`
-/

namespace A080095.P8274863358856501561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n ^ 2 % 3 + (n + 1))

end

end A080095.P8274863358856501561

namespace A080095

/-- `2^(n²%3+n+1)` -/
def P8274863358856501561.Spec : Prop :=
  ∀ n, (P8274863358856501561.a n : ℤ) = A080095 (n + 1)

end A080095

/-! ## A080095.P12222765274965339333

`2^(n+2-char[3*n])`
-/

namespace A080095.P12222765274965339333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A080095.P12222765274965339333

namespace A080095

/-- `2^(n+2-char[3*n])` -/
def P12222765274965339333.Spec : Prop :=
  ∀ n, P12222765274965339333.a n = (A080095 (n + 1) : ℚ)

end A080095

/-! ## A080095.P3357465915458899020

`a(n-1)*A153727(n)` with `a(0)=2`
-/

namespace A080095.P3357465915458899020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A153727 n

end

end A080095.P3357465915458899020

namespace A080095

/-- `a(n-1)*A153727(n)` -/
def P3357465915458899020.Spec : Prop :=
  ∀ n, P3357465915458899020.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P2084992144625909046

`A000079(A117571(n+1))`
-/

namespace A080095.P2084992144625909046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A117571 (n + 1)).toNat

end

end A080095.P2084992144625909046

namespace A080095

/-- `A000079(A117571(n+1))` -/
def P2084992144625909046.Spec : Prop :=
  ∀ n, P2084992144625909046.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P7082509594208176455

`A016116(A136289(n+1))`
-/

namespace A080095.P7082509594208176455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A136289 (n + 1)).toNat

end

end A080095.P7082509594208176455

namespace A080095

/-- `A016116(A136289(n+1))` -/
def P7082509594208176455.Spec : Prop :=
  ∀ n, P7082509594208176455.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P17545589021302741598

`A143095(A047254(n+1))`
-/

namespace A080095.P17545589021302741598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (A047254 (n + 1)).toNat

end

end A080095.P17545589021302741598

namespace A080095

/-- `A143095(A047254(n+1))` -/
def P17545589021302741598.Spec : Prop :=
  ∀ n, P17545589021302741598.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P12464845466608813169

`A060546(A047268(n+2))`
-/

namespace A080095.P12464845466608813169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A047268 (n + 2)).toNat

end

end A080095.P12464845466608813169

namespace A080095

/-- `A060546(A047268(n+2))` -/
def P12464845466608813169.Spec : Prop :=
  ∀ n, P12464845466608813169.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P17446559261618784922

`A135530(A047231(n+2))`
-/

namespace A080095.P17446559261618784922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A047231 (n + 2)).toNat

end

end A080095.P17446559261618784922

namespace A080095

/-- `A135530(A047231(n+2))` -/
def P17446559261618784922.Spec : Prop :=
  ∀ n, P17446559261618784922.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P13710230611213938370

`A200675(A263536(n+2))`
-/

namespace A080095.P13710230611213938370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (A263536 (n + 2)).toNat

end

end A080095.P13710230611213938370

namespace A080095

/-- `A200675(A263536(n+2))` -/
def P13710230611213938370.Spec : Prop :=
  ∀ n, P13710230611213938370.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P12695918731081190265

`A000079(A011655(n)+n+1)`
-/

namespace A080095.P12695918731081190265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A011655 n + (n + 1 : ℤ)).toNat

end

end A080095.P12695918731081190265

namespace A080095

/-- `A000079(A011655(n)+n+1)` -/
def P12695918731081190265.Spec : Prop :=
  ∀ n, P12695918731081190265.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P10119206360501986332

`A000079(A131714(2*n)+n)`
-/

namespace A080095.P10119206360501986332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A131714 (2 * n) + (n : ℤ)).toNat

end

end A080095.P10119206360501986332

namespace A080095

/-- `A000079(A131714(2*n)+n)` -/
def P10119206360501986332.Spec : Prop :=
  ∀ n, P10119206360501986332.a n = A080095 (n + 1)

end A080095

/-! ## A080095.P5909851509323955732

`A000079(n+2-A022003(n+2))`
-/

namespace A080095.P5909851509323955732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 2 : ℤ) - A022003 (n + 2)).toNat

end

end A080095.P5909851509323955732

namespace A080095

/-- `A000079(n+2-A022003(n+2))` -/
def P5909851509323955732.Spec : Prop :=
  ∀ n, P5909851509323955732.a n = A080095 (n + 1)

end A080095

/-!
# A080096: a(1) = a(2) = 1, a(3) = 2, thereafter a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A080096, the canonical program `A080096.P5762593822025304860` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080096 has offset 1).

The definition of A080096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A080096.P5762593822025304860`, by `A080096.P5762593822025304860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080096.P5762593822025304860

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080096

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P5762593822025304860.Spec : Prop :=
  ∀ n, P5762593822025304860.a n = A080096 (n + 1)

theorem P5762593822025304860.correct : P5762593822025304860.Spec := by
  intro n
  simp only [A080096, Nat.add_sub_cancel]

end A080096

/-! ## A080096.P2874484876000910553

`abs(A256243(n+5)-A256244(n+5))`
-/

namespace A080096.P2874484876000910553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256243 (n + 5) - A256244 (n + 5)|

end

end A080096.P2874484876000910553

namespace A080096

/-- `abs(A256243(n+5)-A256244(n+5))` -/
def P2874484876000910553.Spec : Prop :=
  ∀ n, P2874484876000910553.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P7210773580808462735

`A088226(n+7)`
-/

namespace A080096.P7210773580808462735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 7)

end

end A080096.P7210773580808462735

namespace A080096

/-- `A088226(n+7)` -/
def P7210773580808462735.Spec : Prop :=
  ∀ n, P7210773580808462735.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P2942509225128563065

`A088226(A020719(n))%or(36, n)`
-/

namespace A080096.P2942509225128563065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088226 (A020719 n).toNat) (Nat.lor 36 n : ℤ)

end

end A080096.P2942509225128563065

namespace A080096

/-- `A088226(A020719(n))%or(36, n)` -/
def P2942509225128563065.Spec : Prop :=
  ∀ n, P2942509225128563065.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P462552796632180956

`A088226(A020719(n))%A028276(n)`
-/

namespace A080096.P462552796632180956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088226 (A020719 n).toNat) (A028276 n)

end

end A080096.P462552796632180956

namespace A080096

/-- `A088226(A020719(n))%A028276(n)` -/
def P462552796632180956.Spec : Prop :=
  ∀ n, P462552796632180956.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P11367764892668204681

`gcd(A000038(n), A088226(A020719(n)))`
-/

namespace A080096.P11367764892668204681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A088226 (A020719 n).toNat)

end

end A080096.P11367764892668204681

namespace A080096

/-- `gcd(A000038(n), A088226(A020719(n)))` -/
def P11367764892668204681.Spec : Prop :=
  ∀ n, (P11367764892668204681.a n : ℤ) = A080096 (n + 1)

end A080096

/-! ## A080096.P5836874767626103093

`A053615(A256243(n+1)+n+3)`
-/

namespace A080096.P5836874767626103093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A256243 (n + 1) + (n + 3 : ℤ)).toNat

end

end A080096.P5836874767626103093

namespace A080096

/-- `A053615(A256243(n+1)+n+3)` -/
def P5836874767626103093.Spec : Prop :=
  ∀ n, P5836874767626103093.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P15606215635121693447

`A090996(A078446(n+7)-1)`
-/

namespace A080096.P15606215635121693447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A078446 (n + 7) - 1).toNat

end

end A080096.P15606215635121693447

namespace A080096

/-- `A090996(A078446(n+7)-1)` -/
def P15606215635121693447.Spec : Prop :=
  ∀ n, P15606215635121693447.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P14168380635749607595

`A000120(A078446(n+7)-1)`
-/

namespace A080096.P14168380635749607595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078446 (n + 7) - 1).toNat

end

end A080096.P14168380635749607595

namespace A080096

/-- `A000120(A078446(n+7)-1)` -/
def P14168380635749607595.Spec : Prop :=
  ∀ n, P14168380635749607595.a n = A080096 (n + 1)

end A080096

/-! ## A080096.P10137387761473952197

`A277700(A078446(n+7)-1)`
-/

namespace A080096.P10137387761473952197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A078446 (n + 7) - 1).toNat

end

end A080096.P10137387761473952197

namespace A080096

/-- `A277700(A078446(n+7)-1)` -/
def P10137387761473952197.Spec : Prop :=
  ∀ n, P10137387761473952197.a n = A080096 (n + 1)

end A080096

/-!
# A080097: a(n) = Fibonacci(n+2)^2 - 1.

The programs for A080097, the canonical program `A080097.P9347902963338176847` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080097 has offset 0).

The definition of A080097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080097.P9347902963338176847

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=24`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080097

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P9347902963338176847.Spec : Prop :=
  ∀ n, P9347902963338176847.a n = A080097 n

theorem P9347902963338176847.correct : P9347902963338176847.Spec := by
  intro n
  simp only [A080097]

end A080097

/-! ## A080097.P9759215422776273460

`A027941(n)+2*A001654(n)`
-/

namespace A080097.P9759215422776273460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + 2 * A001654 n

end

end A080097.P9759215422776273460

namespace A080097

/-- `A027941(n)+2*A001654(n)` -/
def P9759215422776273460.Spec : Prop :=
  ∀ n, P9759215422776273460.a n = A080097 n

end A080097

/-! ## A080097.P9310667713065443844

`ogf((3x-x^2)/(1-3x+3x^3-x^4))`
-/

namespace A080097.P9310667713065443844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -3, 0, 3, -1] n

end

end A080097.P9310667713065443844

namespace A080097

/-- `ogf((3x-x^2)/(1-3x+3x^3-x^4))` -/
def P9310667713065443844.Spec : Prop :=
  ∀ n, P9310667713065443844.a n = A080097 n

end A080097

/-! ## A080097.P3092734854346576746

`Δ[a(n-2)-a(n-1)]²-1` with `a(0)=0, a(1)=1`
-/

namespace A080097.P3092734854346576746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P3092734854346576746

namespace A080097

/-- `Δ[a(n-2)-a(n-1)]²-1` -/
def P3092734854346576746.Spec : Prop :=
  ∀ n, P3092734854346576746.a n = A080097 n

end A080097

/-! ## A080097.P12177235762338141963

`∑[a(n-1)+a(n-2)]²-1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A080097.P12177235762338141963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - 1

end

end A080097.P12177235762338141963

namespace A080097

/-- `∑[a(n-1)+a(n-2)]²-1` -/
def P12177235762338141963.Spec : Prop :=
  ∀ n, P12177235762338141963.a n = A080097 n

end A080097

/-! ## A080097.P7109815746043270970

`∑[A226205(n+2)]`
-/

namespace A080097.P7109815746043270970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080097.P7109815746043270970

namespace A080097

/-- `∑[A226205(n+2)]` -/
def P7109815746043270970.Spec : Prop :=
  ∀ n, P7109815746043270970.a n = A080097 n

end A080097

/-! ## A080097.P3347286411788627389

`∑[A195971(2*n)]`
-/

namespace A080097.P3347286411788627389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080097.P3347286411788627389

namespace A080097

/-- `∑[A195971(2*n)]` -/
def P3347286411788627389.Spec : Prop :=
  ∀ n, P3347286411788627389.a n = A080097 n

end A080097

/-! ## A080097.P4052820534993338049

`A007598(n+2)-1`
-/

namespace A080097.P4052820534993338049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 2) - 1

end

end A080097.P4052820534993338049

namespace A080097

/-- `A007598(n+2)-1` -/
def P4052820534993338049.Spec : Prop :=
  ∀ n, P4052820534993338049.a n = A080097 n

end A080097

/-! ## A080097.P14525884417355255609

`A245306(n+2)-2`
-/

namespace A080097.P14525884417355255609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (n + 2) - 2

end

end A080097.P14525884417355255609

namespace A080097

/-- `A245306(n+2)-2` -/
def P14525884417355255609.Spec : Prop :=
  ∀ n, P14525884417355255609.a n = A080097 n

end A080097

/-! ## A080097.P1714930988246736013

`∑[abs(A121646(n+2))]`
-/

namespace A080097.P1714930988246736013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121646 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080097.P1714930988246736013

namespace A080097

/-- `∑[abs(A121646(n+2))]` -/
def P1714930988246736013.Spec : Prop :=
  ∀ n, P1714930988246736013.a n = A080097 n

end A080097

/-! ## A080097.P17623556282759801300

`Δ[A001911(n)]²-1`
-/

namespace A080097.P17623556282759801300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P17623556282759801300

namespace A080097

/-- `Δ[A001911(n)]²-1` -/
def P17623556282759801300.Spec : Prop :=
  ∀ n, P17623556282759801300.a n = A080097 n

end A080097

/-! ## A080097.P10583619669492169925

`Δ[A018910(n)]²-1`
-/

namespace A080097.P10583619669492169925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P10583619669492169925

namespace A080097

/-- `Δ[A018910(n)]²-1` -/
def P10583619669492169925.Spec : Prop :=
  ∀ n, P10583619669492169925.a n = A080097 n

end A080097

/-! ## A080097.P4143624528302900994

`Δ[A020695(n)]²-1`
-/

namespace A080097.P4143624528302900994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P4143624528302900994

namespace A080097

/-- `Δ[A020695(n)]²-1` -/
def P4143624528302900994.Spec : Prop :=
  ∀ n, P4143624528302900994.a n = A080097 n

end A080097

/-! ## A080097.P3656522042803992296

`Δ[A048577(n)]²-1`
-/

namespace A080097.P3656522042803992296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P3656522042803992296

namespace A080097

/-- `Δ[A048577(n)]²-1` -/
def P3656522042803992296.Spec : Prop :=
  ∀ n, P3656522042803992296.a n = A080097 n

end A080097

/-! ## A080097.P6729218424913345637

`Δ[A355020(n)]²-1`
-/

namespace A080097.P6729218424913345637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A080097.P6729218424913345637

namespace A080097

/-- `Δ[A355020(n)]²-1` -/
def P6729218424913345637.Spec : Prop :=
  ∀ n, P6729218424913345637.a n = A080097 n

end A080097

/-! ## A080097.P15681624067358751716

`record[A079977(n)²-1]`
-/

namespace A080097.P15681624067358751716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080097.P15681624067358751716

namespace A080097

/-- `record[A079977(n)²-1]` -/
def P15681624067358751716.Spec : Prop :=
  ∀ n, P15681624067358751716.a n = A080097 n

end A080097

/-! ## A080097.P9251295355341668049

`record[A097575(n)²-1]`
-/

namespace A080097.P9251295355341668049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080097.P9251295355341668049

namespace A080097

/-- `record[A097575(n)²-1]` -/
def P9251295355341668049.Spec : Prop :=
  ∀ n, P9251295355341668049.a n = A080097 n

end A080097

/-! ## A080097.P2392607116025378046

`record[A193923(n)²-1]`
-/

namespace A080097.P2392607116025378046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080097.P2392607116025378046

namespace A080097

/-- `record[A193923(n)²-1]` -/
def P2392607116025378046.Spec : Prop :=
  ∀ n, P2392607116025378046.a n = A080097 n

end A080097

/-! ## A080097.P5658012693288965029

`record[A212804(n)²-1]`
-/

namespace A080097.P5658012693288965029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080097.P5658012693288965029

namespace A080097

/-- `record[A212804(n)²-1]` -/
def P5658012693288965029.Spec : Prop :=
  ∀ n, P5658012693288965029.a n = A080097 n

end A080097

/-!
# A080098: Triangle T(n,k) = n OR k, 0 <= k <= n, bitwise logical OR, read by rows.

The programs for A080098, the canonical program `A080098.P7543541268193481793` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080098 has offset 0).

The definition of A080098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080098.P9760262669222025199

`or(A002260(n+1)-1, comp[∑[n]]%(n+2))`
-/

namespace A080098.P9760262669222025199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1) - 1) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2) : ℕ) : ℤ)

end

end A080098.P9760262669222025199

namespace A080098

/-- `or(A002260(n+1)-1, comp[∑[n]]%(n+2))` -/
def P9760262669222025199.Spec : Prop :=
  ∀ n, P9760262669222025199.a n = A080098 n

end A080098

/-! ## A080098.P15606579471444931979

`A080099(n)+A051933(n)`
-/

namespace A080098.P15606579471444931979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n + A051933 n

end

end A080098.P15606579471444931979

namespace A080098

/-- `A080099(n)+A051933(n)` -/
def P15606579471444931979.Spec : Prop :=
  ∀ n, P15606579471444931979.a n = A080098 n

end A080098

/-! ## A080098.P6629319900528997401

`A051162(n-A080099(n))`
-/

namespace A080098.P6629319900528997401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) - A080099 n).toNat

end

end A080098.P6629319900528997401

namespace A080098

/-- `A051162(n-A080099(n))` -/
def P6629319900528997401.Spec : Prop :=
  ∀ n, P6629319900528997401.a n = A080098 n

end A080098

/-! ## A080098.P6907348017090971602

`A051933(n-A080099(n))`
-/

namespace A080098.P6907348017090971602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 ((n : ℤ) - A080099 n).toNat

end

end A080098.P6907348017090971602

namespace A080098

/-- `A051933(n-A080099(n))` -/
def P6907348017090971602.Spec : Prop :=
  ∀ n, P6907348017090971602.a n = A080098 n

end A080098

/-! ## A080098.P7543541268193481793

`or(A002262(n), A003056(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080098

/-- `or(A002262(n), A003056(n))` -/
def P7543541268193481793.Spec : Prop :=
  ∀ n, P7543541268193481793.a n = A080098 n

theorem P7543541268193481793.correct : P7543541268193481793.Spec := by
  intro n
  simp only [A080098]

end A080098

/-! ## A080098.P12183482753808049285

`or(A002262(n), A051933(n))`
-/

namespace A080098.P12183482753808049285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A051933 n)

end

end A080098.P12183482753808049285

namespace A080098

/-- `or(A002262(n), A051933(n))` -/
def P12183482753808049285.Spec : Prop :=
  ∀ n, P12183482753808049285.a n = A080098 n

end A080098

/-! ## A080098.P16254676109712927491

`(A051933(n)+A051162(n))/2`
-/

namespace A080098.P16254676109712927491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051933 n + A051162 n : ℚ) / 2

end

end A080098.P16254676109712927491

namespace A080098

/-- `(A051933(n)+A051162(n))/2` -/
def P16254676109712927491.Spec : Prop :=
  ∀ n, P16254676109712927491.a n = (A080098 n : ℚ)

end A080098

/-! ## A080098.P4768777230039109707

`or(A002260(n+1)-1, A003056(n))`
-/

namespace A080098.P4768777230039109707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1) - 1) (A003056 n)

end

end A080098.P4768777230039109707

namespace A080098

/-- `or(A002260(n+1)-1, A003056(n))` -/
def P4768777230039109707.Spec : Prop :=
  ∀ n, P4768777230039109707.a n = A080098 n

theorem P4768777230039109707.correct : P4768777230039109707.Spec := by
  intro n
  simp only [A080098, Nat.add_sub_cancel, A080098.P4768777230039109707.a, A080098.P7543541268193481793.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080098

/-! ## A080098.P7333356267672655455

`or(A003056(n), A057554(2*n+1))`
-/

namespace A080098.P7333356267672655455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 n) (A057554 (2 * n + 1))

end

end A080098.P7333356267672655455

namespace A080098

/-- `or(A003056(n), A057554(2*n+1))` -/
def P7333356267672655455.Spec : Prop :=
  ∀ n, P7333356267672655455.a n = A080098 n

end A080098

/-! ## A080098.P11338114258561429477

`or(A002262(n), A163530(A163334(n)))`
-/

namespace A080098.P11338114258561429477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A163530 (A163334 n).toNat)

end

end A080098.P11338114258561429477

namespace A080098

/-- `or(A002262(n), A163530(A163334(n)))` -/
def P11338114258561429477.Spec : Prop :=
  ∀ n, P11338114258561429477.a n = A080098 n

end A080098

/-! ## A080098.P16565076915331570451

`or(A003056(n), A023443(A002260(n+1)))`
-/

namespace A080098.P16565076915331570451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 n) (A023443 (A002260 (n + 1)).toNat)

end

end A080098.P16565076915331570451

namespace A080098

/-- `or(A003056(n), A023443(A002260(n+1)))` -/
def P16565076915331570451.Spec : Prop :=
  ∀ n, P16565076915331570451.a n = A080098 n

end A080098

/-! ## A080098.P12181280359911041726

`or(A025581(n)+A002262(n), A002262(n))`
-/

namespace A080098.P12181280359911041726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 n + A002262 n) (A002262 n)

end

end A080098.P12181280359911041726

namespace A080098

/-- `or(A025581(n)+A002262(n), A002262(n))` -/
def P12181280359911041726.Spec : Prop :=
  ∀ n, P12181280359911041726.a n = A080098 n

end A080098

/-! ## A080098.P2753183281569449443

`or(A002262(n), A003987(n-A002262(n)))`
-/

namespace A080098.P2753183281569449443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A003987 ((n : ℤ) - A002262 n).toNat)

end

end A080098.P2753183281569449443

namespace A080098

/-- `or(A002262(n), A003987(n-A002262(n)))` -/
def P2753183281569449443.Spec : Prop :=
  ∀ n, P2753183281569449443.a n = A080098 n

end A080098

/-! ## A080098.P6436494810424340036

`or(A002262(n), A025581(n-A002262(n)))`
-/

namespace A080098.P6436494810424340036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A025581 ((n : ℤ) - A002262 n).toNat)

end

end A080098.P6436494810424340036

namespace A080098

/-- `or(A002262(n), A025581(n-A002262(n)))` -/
def P6436494810424340036.Spec : Prop :=
  ∀ n, P6436494810424340036.a n = A080098 n

end A080098

/-! ## A080098.P8569411745078647558

`or(n-A057944(n), A159797(A057944(n)))`
-/

namespace A080098.P8569411745078647558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - A057944 n) (A159797 (A057944 n).toNat)

end

end A080098.P8569411745078647558

namespace A080098

/-- `or(n-A057944(n), A159797(A057944(n)))` -/
def P8569411745078647558.Spec : Prop :=
  ∀ n, P8569411745078647558.a n = A080098 n

end A080098

/-! ## A080098.P8085662164597741548

`or(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))`
-/

namespace A080098.P8085662164597741548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057554 (2 * n + 1) + A057554 (2 * (n + 1))) (A057554 (2 * n + 1))

end

end A080098.P8085662164597741548

namespace A080098

/-- `or(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))` -/
def P8085662164597741548.Spec : Prop :=
  ∀ n, P8085662164597741548.a n = A080098 n

end A080098

/-! ## A080098.P17547676545960483325

`floor(log2(A223540(n)))`
-/

namespace A080098.P17547676545960483325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A223540 n).toNat

end

end A080098.P17547676545960483325

namespace A080098

/-- `floor(log2(A223540(n)))` -/
def P17547676545960483325.Spec : Prop :=
  ∀ n, (P17547676545960483325.a n : ℤ) = A080098 n

end A080098

/-! ## A080098.P2682150210234608326

`or(A026100(A026098(n+1))-1, A003056(n))`
-/

namespace A080098.P2682150210234608326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026100 (A026098 (n + 1)).toNat - 1) (A003056 n)

end

end A080098.P2682150210234608326

namespace A080098

/-- `or(A026100(A026098(n+1))-1, A003056(n))` -/
def P2682150210234608326.Spec : Prop :=
  ∀ n, P2682150210234608326.a n = A080098 n

end A080098

/-! ## A080098.P13513680297769251302

`or(A002262(n), A163530(A163336(n)))`
-/

namespace A080098.P13513680297769251302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 n) (A163530 (A163336 n).toNat)

end

end A080098.P13513680297769251302

namespace A080098

/-- `or(A002262(n), A163530(A163336(n)))` -/
def P13513680297769251302.Spec : Prop :=
  ∀ n, P13513680297769251302.a n = A080098 n

end A080098

/-! ## A080098.P16496961293988009422

`A003986(A245300(n))`
-/

namespace A080098.P16496961293988009422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A245300 n).toNat

end

end A080098.P16496961293988009422

namespace A080098

/-- `A003986(A245300(n))` -/
def P16496961293988009422.Spec : Prop :=
  ∀ n, P16496961293988009422.a n = A080098 n

end A080098

/-!
# A080099: Triangle T(n,k) = n AND k, 0<=k<=n, bitwise logical AND, read by rows.

The programs for A080099, the canonical program `A080099.P15784613007183456214` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080099 has offset 0).

The definition of A080099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080099.P15784613007183456214

`A051162(n)-A080098(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080099

/-- `A051162(n)-A080098(n)` -/
def P15784613007183456214.Spec : Prop :=
  ∀ n, P15784613007183456214.a n = A080099 n

theorem P15784613007183456214.correct : P15784613007183456214.Spec := by
  intro n
  simp only [A080099]

end A080099

/-! ## A080099.P12639655984117115844

`A080098(n)-A051933(n)`
-/

namespace A080099.P12639655984117115844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 n - A051933 n

end

end A080099.P12639655984117115844

namespace A080099

/-- `A080098(n)-A051933(n)` -/
def P12639655984117115844.Spec : Prop :=
  ∀ n, P12639655984117115844.a n = A080099 n

end A080099

/-! ## A080099.P18430744221832273179

`and(A002262(n), A003056(n))`
-/

namespace A080099.P18430744221832273179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A003056 n)

end

end A080099.P18430744221832273179

namespace A080099

/-- `and(A002262(n), A003056(n))` -/
def P18430744221832273179.Spec : Prop :=
  ∀ n, P18430744221832273179.a n = A080099 n

end A080099

/-! ## A080099.P305711870678412431

`and(A002262(n), A265705(n))`
-/

namespace A080099.P305711870678412431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A265705 n)

end

end A080099.P305711870678412431

namespace A080099

/-- `and(A002262(n), A265705(n))` -/
def P305711870678412431.Spec : Prop :=
  ∀ n, P305711870678412431.a n = A080099 n

end A080099

/-! ## A080099.P1958631479912521908

`and(∑[A073424(n)], A002262(n))`
-/

namespace A080099.P1958631479912521908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A002262 n)

end

end A080099.P1958631479912521908

namespace A080099

/-- `and(∑[A073424(n)], A002262(n))` -/
def P1958631479912521908.Spec : Prop :=
  ∀ n, P1958631479912521908.a n = A080099 n

end A080099

/-! ## A080099.P13761895987912634619

`(A051162(n)-A051933(n))/2`
-/

namespace A080099.P13761895987912634619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n - A051933 n : ℚ) / 2

end

end A080099.P13761895987912634619

namespace A080099

/-- `(A051162(n)-A051933(n))/2` -/
def P13761895987912634619.Spec : Prop :=
  ∀ n, P13761895987912634619.a n = (A080099 n : ℚ)

end A080099

/-! ## A080099.P2542890270734221451

`and(A003056(n), A057554(Δ[n²]))`
-/

namespace A080099.P2542890270734221451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A080099.P2542890270734221451

namespace A080099

/-- `and(A003056(n), A057554(Δ[n²]))` -/
def P2542890270734221451.Spec : Prop :=
  ∀ n, P2542890270734221451.a n = A080099 n

end A080099

/-! ## A080099.P1442455750994957256

`and(A002260(n+1)-1, A003056(n))`
-/

namespace A080099.P1442455750994957256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1) - 1) (A003056 n)

end

end A080099.P1442455750994957256

namespace A080099

/-- `and(A002260(n+1)-1, A003056(n))` -/
def P1442455750994957256.Spec : Prop :=
  ∀ n, P1442455750994957256.a n = A080099 n

end A080099

/-! ## A080099.P9462621833410103734

`and(A025581(n)+A002262(n), A002262(n))`
-/

namespace A080099.P9462621833410103734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n + A002262 n) (A002262 n)

end

end A080099.P9462621833410103734

namespace A080099

/-- `and(A025581(n)+A002262(n), A002262(n))` -/
def P9462621833410103734.Spec : Prop :=
  ∀ n, P9462621833410103734.a n = A080099 n

end A080099

/-! ## A080099.P1612070880933203255

`and(A002262(n), A003984(n-A002262(n)))`
-/

namespace A080099.P1612070880933203255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A003984 ((n : ℤ) - A002262 n).toNat)

end

end A080099.P1612070880933203255

namespace A080099

/-- `and(A002262(n), A003984(n-A002262(n)))` -/
def P1612070880933203255.Spec : Prop :=
  ∀ n, P1612070880933203255.a n = A080099 n

end A080099

/-! ## A080099.P14485679510772955771

`and(A002262(n), A003987(n-A002262(n)))`
-/

namespace A080099.P14485679510772955771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A003987 ((n : ℤ) - A002262 n).toNat)

end

end A080099.P14485679510772955771

namespace A080099

/-- `and(A002262(n), A003987(n-A002262(n)))` -/
def P14485679510772955771.Spec : Prop :=
  ∀ n, P14485679510772955771.a n = A080099 n

end A080099

/-! ## A080099.P9119275295057359078

`and(A002262(n), A025581(n-A002262(n)))`
-/

namespace A080099.P9119275295057359078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A025581 ((n : ℤ) - A002262 n).toNat)

end

end A080099.P9119275295057359078

namespace A080099

/-- `and(A002262(n), A025581(n-A002262(n)))` -/
def P9119275295057359078.Spec : Prop :=
  ∀ n, P9119275295057359078.a n = A080099 n

end A080099

/-! ## A080099.P8327414810423586008

`and(A003056(n)-A025581(n), A003056(n))`
-/

namespace A080099.P8327414810423586008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n - A025581 n) (A003056 n)

end

end A080099.P8327414810423586008

namespace A080099

/-- `and(A003056(n)-A025581(n), A003056(n))` -/
def P8327414810423586008.Spec : Prop :=
  ∀ n, P8327414810423586008.a n = A080099 n

end A080099

/-! ## A080099.P13357475465129297184

`A002262(n-and(A002262(n), A051933(n)))`
-/

namespace A080099.P13357475465129297184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - Int.land (A002262 n) (A051933 n)).toNat

end

end A080099.P13357475465129297184

namespace A080099

/-- `A002262(n-and(A002262(n), A051933(n)))` -/
def P13357475465129297184.Spec : Prop :=
  ∀ n, P13357475465129297184.a n = A080099 n

end A080099

/-! ## A080099.P8420892294438607580

`and(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))`
-/

namespace A080099.P8420892294438607580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057554 (2 * n + 1) + A057554 (2 * (n + 1))) (A057554 (2 * n + 1))

end

end A080099.P8420892294438607580

namespace A080099

/-- `and(A057554(2*n+1)+A057554(2*(n+1)), A057554(2*n+1))` -/
def P8420892294438607580.Spec : Prop :=
  ∀ n, P8420892294438607580.a n = A080099 n

end A080099

/-! ## A080099.P15944920351723515844

`and(A026100(A026098(n+1))-1, A003056(n))`
-/

namespace A080099.P15944920351723515844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026100 (A026098 (n + 1)).toNat - 1) (A003056 n)

end

end A080099.P15944920351723515844

namespace A080099

/-- `and(A026100(A026098(n+1))-1, A003056(n))` -/
def P15944920351723515844.Spec : Prop :=
  ∀ n, P15944920351723515844.a n = A080099 n

end A080099

/-! ## A080099.P3153084337888869587

`and(A003056(n), A129143(n+1))`
-/

namespace A080099.P3153084337888869587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A129143 (n + 1))

end

end A080099.P3153084337888869587

namespace A080099

/-- `and(A003056(n), A129143(n+1))` -/
def P3153084337888869587.Spec : Prop :=
  ∀ n, P3153084337888869587.a n = A080099 n

end A080099

/-! ## A080099.P13269398874676662294

`and(A003056(n), A081551(n+1))`
-/

namespace A080099.P13269398874676662294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A081551 (n + 1))

end

end A080099.P13269398874676662294

namespace A080099

/-- `and(A003056(n), A081551(n+1))` -/
def P13269398874676662294.Spec : Prop :=
  ∀ n, P13269398874676662294.a n = A080099 n

end A080099

/-! ## A080099.P11080439405362056773

`A004198(A245300(n))`
-/

namespace A080099.P11080439405362056773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A245300 n).toNat

end

end A080099.P11080439405362056773

namespace A080099

/-- `A004198(A245300(n))` -/
def P11080439405362056773.Spec : Prop :=
  ∀ n, P11080439405362056773.a n = A080099 n

end A080099

/-! ## A080099.P4915613633606528834

`and(A003056(n), A263254(A263255(n)))`
-/

namespace A080099.P4915613633606528834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 n) (A263254 (A263255 n).toNat)

end

end A080099.P4915613633606528834

namespace A080099

/-- `and(A003056(n), A263254(A263255(n)))` -/
def P4915613633606528834.Spec : Prop :=
  ∀ n, P4915613633606528834.a n = A080099 n

end A080099

