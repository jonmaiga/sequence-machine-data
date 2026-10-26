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
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A047100: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and touches the line y=x/3 only at lattice points.

The programs for A047100, there is no canonical definition to state claims against.
-/

/-! ## A047100.P306238859215785944

`A254531(A048766(A103997(n)))`
-/

namespace A047100.P306238859215785944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254531 ((A048766 (A103997 n).toNat).toNat + 27)

end

end A047100.P306238859215785944

/-! ## A047100.P15105079697870670413

`A174530(A174544(n))+A047020(n)`
-/

namespace A047100.P15105079697870670413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174530 (A174544 n).toNat + A047020 n

end

end A047100.P15105079697870670413

/-! ## A047100.P4466972018856789079

`A226046(A249755(n)+A005041(n))`
-/

namespace A047100.P4466972018856789079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A249755 n + A005041 n).toNat

end

end A047100.P4466972018856789079

/-! ## A047100.P17833931442004032717

`A226046(A249755(n)+A006949(n))`
-/

namespace A047100.P17833931442004032717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A249755 n + A006949 n).toNat

end

end A047100.P17833931442004032717

/-!
# A047101: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047100.

The programs for A047101, there is no canonical definition to state claims against.
-/

/-! ## A047101.P17197182627939086620

`A131577(n)+A069288(A088218(n))`
-/

namespace A047101.P17197182627939086620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A069288 (A088218 n).toNat

end

end A047101.P17197182627939086620

/-! ## A047101.P1008633483464126065

`A107428(n+1)-A124010(A001003(n))`
-/

namespace A047101.P1008633483464126065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - A124010 (A001003 n).toNat

end

end A047101.P1008633483464126065

/-! ## A047101.P4343885376257898847

`A107428(n+1)-A339890(A321399(n))`
-/

namespace A047101.P4343885376257898847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - A339890 (A321399 n).toNat

end

end A047101.P4343885376257898847

/-! ## A047101.P13736784071149302532

`A323531(2*n)+A124010(A007973(n+2))`
-/

namespace A047101.P13736784071149302532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323531 (2 * n) + A124010 (A007973 (n + 2)).toNat

end

end A047101.P13736784071149302532

/-! ## A047101.P11452371777290429721

`A107428(n+1)-A051903(A226999(3*n+1))`
-/

namespace A047101.P11452371777290429721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107428 (n + 1) - A051903 (A226999 (3 * n + 1)).toNat

end

end A047101.P11452371777290429721

/-!
# A047102: T(n,n), array T as in A047100.

The programs for A047102, there is no canonical definition to state claims against.
-/

/-! ## A047102.P8675481392074026050

`A047100(∑[4*n])`
-/

namespace A047102.P8675481392074026050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047102.P8675481392074026050

/-! ## A047102.P1530033003215595649

`-xor(A047100(A046092(n))-1, -1)`
-/

namespace A047102.P1530033003215595649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A047100 (A046092 n).toNat - 1) (-1)

end

end A047102.P1530033003215595649

/-! ## A047102.P5305739238347331049

`A047100(A046092(n))%A020698(n)`
-/

namespace A047102.P5305739238347331049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047100 (A046092 n).toNat) (A020698 n)

end

end A047102.P5305739238347331049

/-! ## A047102.P3095623360114506815

`lcm(A020985(n), A047100(A046092(n)))`
-/

namespace A047102.P3095623360114506815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A047100 (A046092 n).toNat)

end

end A047102.P3095623360114506815

/-! ## A047102.P761975810269971957

`A033999(2*n)*A047100(A046092(n))`
-/

namespace A047102.P761975810269971957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A047100 (A046092 n).toNat

end

end A047102.P761975810269971957

/-! ## A047102.P5072968326717785409

`A047100(A046092(n))+A008683(8*n+4)`
-/

namespace A047102.P5072968326717785409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A046092 n).toNat + A008683 (8 * n + 4)

end

end A047102.P5072968326717785409

/-! ## A047102.P14810881962688697346

`A001222(A065383(n))*A047100(A046092(n))`
-/

namespace A047102.P14810881962688697346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065383 n).toNat * A047100 (A046092 n).toNat

end

end A047102.P14810881962688697346

/-! ## A047102.P7492420847428737804

`A001222(A045370(n+1))*A047100(A046092(n))`
-/

namespace A047102.P7492420847428737804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045370 (n + 1)).toNat * A047100 (A046092 n).toNat

end

end A047102.P7492420847428737804

/-!
# A047103: T(n,n-1), array T as in A047100.

The programs for A047103, there is no canonical definition to state claims against.
-/

/-! ## A047103.P6190493010589674511

`A047100(2*(n+1)²)`
-/

namespace A047103.P6190493010589674511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (2 * (n + 1) ^ 2)

end

end A047103.P6190493010589674511

/-! ## A047103.P4876357409129406548

`A047100(A184636(n+1))%A074554(n)`
-/

namespace A047103.P4876357409129406548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047100 (A184636 (n + 1)).toNat) (A074554 n)

end

end A047103.P4876357409129406548

/-! ## A047103.P8179569241567846974

`lcm(A033999(n), A047100(A184636(n+1)))`
-/

namespace A047103.P8179569241567846974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047100 (A184636 (n + 1)).toNat)

end

end A047103.P8179569241567846974

/-! ## A047103.P2150444538314656632

`or(A000007(n), A047100(A184636(n+1)))`
-/

namespace A047103.P2150444538314656632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047100 (A184636 (n + 1)).toNat)

end

end A047103.P2150444538314656632

/-! ## A047103.P4468307915014775184

`A047100(A184636(n+1))+char[A254466(n)]`
-/

namespace A047103.P4468307915014775184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A184636 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047103.P4468307915014775184

/-! ## A047103.P15737896633680914628

`A047100(A184636(n+1))^gcd(2, A000225(n))`
-/

namespace A047103.P15737896633680914628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A184636 (n + 1)).toNat ^ Int.gcd 2 (A000225 n)

end

end A047103.P15737896633680914628

/-! ## A047103.P13578778385318578080

`A047100(A184636(n+1))+char[A249679(n+2)]`
-/

namespace A047103.P13578778385318578080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249679 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A184636 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047103.P13578778385318578080

/-! ## A047103.P7007570426791558826

`A047100(A184636(n+1))/A007318(floor(1/(n+1)))`
-/

namespace A047103.P7007570426791558826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047100 (A184636 (n + 1)).toNat : ℚ) / (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A047103.P7007570426791558826

/-! ## A047103.P17675193076403931148

`∏{e}[A000040(n+1), A047100(A184636(n+1))-#]+1`
-/

namespace A047103.P17675193076403931148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A047100 (A184636 (n + 1)).toNat - (Nat.factorization (f1 n).natAbs p : ℤ)) + 1

end

end A047103.P17675193076403931148

/-! ## A047103.P17475272274928322568

`A014963(A131114(n))*A047100(A184636(n+1))`
-/

namespace A047103.P17475272274928322568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A131114 n).toNat * A047100 (A184636 (n + 1)).toNat

end

end A047103.P17475272274928322568

/-!
# A047104: T(n,n-2), array T as in A047100.

The programs for A047104, there is no canonical definition to state claims against.
-/

/-! ## A047104.P5156906159195290688

`abs(Δ[A047103(n+1)]-A047106(n))`
-/

namespace A047104.P5156906159195290688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A047106 n|

end

end A047104.P5156906159195290688

/-! ## A047104.P16088765198533976263

`A047100((n+1)²+(n+2)²)`
-/

namespace A047104.P16088765198533976263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047104.P16088765198533976263

/-! ## A047104.P10166873896655897446

`or(floor(acot(n)), A047100(A001844(n+1)))`
-/

namespace A047104.P10166873896655897446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A047100 (A001844 (n + 1)).toNat)

end

end A047104.P10166873896655897446

/-! ## A047104.P13324122301532139883

`record[A047100(n+1)*A143259(2*n+1)]`
-/

namespace A047104.P13324122301532139883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (n + 1) * A143259 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047104.P13324122301532139883

/-! ## A047104.P8951496023418424742

`record[A047100(2*n+1)*A077606(2*n+1)]`
-/

namespace A047104.P8951496023418424742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (2 * n + 1) * A077606 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047104.P8951496023418424742

/-! ## A047104.P6078645787913308593

`record[A047100(2*n+1)*A203994(2*n+1)]`
-/

namespace A047104.P6078645787913308593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (2 * n + 1) * A203994 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047104.P6078645787913308593

/-! ## A047104.P1350884893175855875

`lcm(A033999(n), A047100(A001844(n+1)))`
-/

namespace A047104.P1350884893175855875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047100 (A001844 (n + 1)).toNat)

end

end A047104.P1350884893175855875

/-! ## A047104.P3044253947562820286

`A047100(A001844(n+1))+A000007(2*(n+9))`
-/

namespace A047104.P3044253947562820286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A001844 (n + 1)).toNat + A000007 (2 * (n + 9))

end

end A047104.P3044253947562820286

/-!
# A047105: T(n,n-3), array T as in A047100.

The programs for A047105, there is no canonical definition to state claims against.
-/

/-! ## A047105.P10248482787855348453

`A047100(A268581(n)+4)`
-/

namespace A047105.P10248482787855348453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A268581 n + 4).toNat

end

end A047105.P10248482787855348453

/-! ## A047105.P11690065920676993070

`A047100(A005408((n+2)²))`
-/

namespace A047105.P11690065920676993070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A005408 ((n + 2) ^ 2)).toNat

end

end A047105.P11690065920676993070

/-! ## A047105.P15744026304363953010

`A047100(A130773((n+2)²))`
-/

namespace A047105.P15744026304363953010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A130773 ((n + 2) ^ 2)).toNat

end

end A047105.P15744026304363953010

/-! ## A047105.P10700925181236639300

`A047100(A184636(n+2)+1)`
-/

namespace A047105.P10700925181236639300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A184636 (n + 2) + 1).toNat

end

end A047105.P10700925181236639300

/-! ## A047105.P3541021065073946504

`A047100(eq[n, A038722(n+1)+2])`
-/

namespace A047105.P3541021065073946504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047105.P3541021065073946504

/-! ## A047105.P7379763321349450916

`A047100(eq[A023444(n), A038722(n+1)])`
-/

namespace A047105.P7379763321349450916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047105.P7379763321349450916

/-! ## A047105.P12396589629564796243

`A047100(eq[A038722(n+1), A289207(n)])`
-/

namespace A047105.P12396589629564796243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047105.P12396589629564796243

/-!
# A047106: T(n,n+1), array T as in A047100.

The programs for A047106, there is no canonical definition to state claims against.
-/

/-! ## A047106.P18200384952263683507

`abs(Δ[A047103(n+1)]-A047104(n+2))`
-/

namespace A047106.P18200384952263683507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A047104 (n + 2)|

end

end A047106.P18200384952263683507

/-! ## A047106.P15760622460436887934

`A047100(2*n+∑[4*n]+1)`
-/

namespace A047106.P15760622460436887934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A047106.P15760622460436887934

/-! ## A047106.P11840020201202219167

`record[A047100(gcd(n, A203994(n+1)))]`
-/

namespace A047106.P11840020201202219167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Int.gcd (n : ℤ) (A203994 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047106.P11840020201202219167

/-! ## A047106.P9003315976112268182

`record[A047100(and(n, A077606(n+1)))]`
-/

namespace A047106.P9003315976112268182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Int.land (n : ℤ) (A077606 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047106.P9003315976112268182

/-! ## A047106.P4452631717718914910

`record[A047100(and(n, A143259(n+1)))]`
-/

namespace A047106.P4452631717718914910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Int.land (n : ℤ) (A143259 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047106.P4452631717718914910

/-!
# A047107: T(n,n+2), array T as in A047100.

The programs for A047107, there is no canonical definition to state claims against.
-/

/-! ## A047107.P2182967826678504055

`A047106(n+1)-A047102(n+1)`
-/

namespace A047107.P2182967826678504055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047106 (n + 1) - A047102 (n + 1)

end

end A047107.P2182967826678504055

/-! ## A047107.P5988098917198319027

`A047100(A132209(n+1))`
-/

namespace A047107.P5988098917198319027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A132209 (n + 1)).toNat

end

end A047107.P5988098917198319027

/-! ## A047107.P13118119595665612126

`A047100(A142463(n+1))`
-/

namespace A047107.P13118119595665612126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A142463 (n + 1)).toNat

end

end A047107.P13118119595665612126

/-! ## A047107.P18346323989491111283

`A047100(A046092(n+1)-1)`
-/

namespace A047107.P18346323989491111283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A046092 (n + 1) - 1).toNat

end

end A047107.P18346323989491111283

/-! ## A047107.P4228484896422062105

`A047100(A001844(n+1)-2)`
-/

namespace A047107.P4228484896422062105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A001844 (n + 1) - 2).toNat

end

end A047107.P4228484896422062105

/-! ## A047107.P17970334114128490745

`A047100(A099776(n+1)-2)`
-/

namespace A047107.P17970334114128490745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A099776 (n + 1) - 2).toNat

end

end A047107.P17970334114128490745

/-! ## A047107.P10303002642892524929

`record[gcd(A203994(n+1)+1, A047100(n))]`
-/

namespace A047107.P10303002642892524929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A203994 (n + 1) + 1) (A047100 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047107.P10303002642892524929

/-!
# A047108: T(n,n+3), array T as in A047100.

The programs for A047108, there is no canonical definition to state claims against.
-/

/-! ## A047108.P5002717936728234724

`Δ[A047107(n)-∑[A047102(n)]]`
-/

namespace A047108.P5002717936728234724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047107 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047108.P5002717936728234724

/-! ## A047108.P10787274852939438801

`Δ[A047107(n)]-A047102(n+1)`
-/

namespace A047108.P10787274852939438801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047102 (n + 1)

end

end A047108.P10787274852939438801

/-! ## A047108.P2394219426069111904

`A047107(n+1)-A047106(n+1)`
-/

namespace A047108.P2394219426069111904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047107 (n + 1) - A047106 (n + 1)

end

end A047108.P2394219426069111904

/-! ## A047108.P9823810668178949751

`A047107(n+1)-(A047107(n)+A047102(n+1))`
-/

namespace A047108.P9823810668178949751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047107 (n + 1) - (A047107 n + A047102 (n + 1))

end

end A047108.P9823810668178949751

/-! ## A047108.P8566263635270645302

`A047100(2*(n+1)*(n+3))`
-/

namespace A047108.P8566263635270645302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (2 * ((n + 1) * (n + 3)))

end

end A047108.P8566263635270645302

/-! ## A047108.P11357132039806038033

`record[A047100(and(n, A077606(n+2)))]`
-/

namespace A047108.P11357132039806038033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Int.land (n : ℤ) (A077606 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047108.P11357132039806038033

/-! ## A047108.P9995199439797283197

`record[A047100(and(n, A143259(n+2)))]`
-/

namespace A047108.P9995199439797283197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (Int.land (n : ℤ) (A143259 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047108.P9995199439797283197

/-!
# A047109: T(2n,n), array T as in A047100.

The programs for A047109, there is no canonical definition to state claims against.
-/

/-! ## A047109.P8402791648767936250

`A047100(A062728(n))`
-/

namespace A047109.P8402791648767936250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A062728 n).toNat

end

end A047109.P8402791648767936250

/-! ## A047109.P5784264185690759054

`A047100(A062725(n)+n)`
-/

namespace A047109.P5784264185690759054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A062725 n + (n : ℤ)).toNat

end

end A047109.P5784264185690759054

/-! ## A047109.P10844943110956803055

`A047100(n/2*A017245(n))`
-/

namespace A047109.P10844943110956803055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A017245 n : ℚ))).toNat

end

end A047109.P10844943110956803055

/-! ## A047109.P2800571207106681150

`A047100(A055999(n)+(2*n)²)`
-/

namespace A047109.P2800571207106681150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A055999 n + ((2 * n) ^ 2 : ℤ)).toNat

end

end A047109.P2800571207106681150

/-! ## A047109.P7256096712420281517

`A047100(A022267(n)+A008486(n))`
-/

namespace A047109.P7256096712420281517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A022267 n + A008486 n).toNat

end

end A047109.P7256096712420281517

/-!
# A047110: Array read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no up-step crosses the line y=2x/3. (Thus a path crosses the line only at lattice points and on right-steps.).

The programs for A047110, there is no canonical definition to state claims against.
-/

/-! ## A047110.P440560674387820831

`A125778(∑[2*n]%A080036(n))`
-/

namespace A047110.P440560674387820831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A047110.P440560674387820831

/-! ## A047110.P14382320704204026782

`A125778(A061579(n%A008459(n)))`
-/

namespace A047110.P14382320704204026782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A061579 (Int.tmod (n : ℤ) (A008459 n)).toNat).toNat

end

end A047110.P14382320704204026782

/-! ## A047110.P14380318082139993106

`A125778(gcd(A010816(n), A061579(n)))`
-/

namespace A047110.P14380318082139993106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (Int.gcd (A010816 n) (A061579 n))

end

end A047110.P14380318082139993106

/-! ## A047110.P9102263849910181688

`A125778(A038722(n+2)%A008459(n))`
-/

namespace A047110.P9102263849910181688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (Int.tmod (A038722 (n + 2)) (A008459 n)).toNat

end

end A047110.P9102263849910181688

/-! ## A047110.P7617789278027861564

`A125778(A061579(n)+Δ[A130296(n+1)])`
-/

namespace A047110.P7617789278027861564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A061579 n + (f1 (n + 1) - f1 n)).toNat

end

end A047110.P7617789278027861564

/-! ## A047110.P12639445138526238473

`A125778(A038722(n+1)-A130296(n+1))`
-/

namespace A047110.P12639445138526238473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A038722 (n + 1) - A130296 (n + 1)).toNat

end

end A047110.P12639445138526238473

/-! ## A047110.P8501622766968325825

`A125778(A061579(n))`
-/

namespace A047110.P8501622766968325825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A061579 n).toNat

end

end A047110.P8501622766968325825

/-! ## A047110.P14693409245417966701

`A125778(A038722(n+1)-1)`
-/

namespace A047110.P14693409245417966701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A038722 (n + 1) - 1).toNat

end

end A047110.P14693409245417966701

/-! ## A047110.P632516246734547247

`A125778(A038722(n+2))`
-/

namespace A047110.P632516246734547247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A038722 (n + 2)).toNat

end

end A047110.P632516246734547247

/-!
# A047111: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047110.

The programs for A047111, there is no canonical definition to state claims against.
-/

/-! ## A047111.P1830864519167675539

`A333483(n)+A123064(A239554(n))`
-/

namespace A047111.P1830864519167675539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 n + A123064 (A239554 n).toNat

end

end A047111.P1830864519167675539

/-! ## A047111.P10308397638582235588

`A345167(A000045(n+2))+A321649(2*n+5)`
-/

namespace A047111.P10308397638582235588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A000045 (n + 2)).toNat + A321649 (2 * n + 5)

end

end A047111.P10308397638582235588

/-! ## A047111.P14859999767559416707

`A345167(A000045(n+2))+A048996(A189186(n+3))`
-/

namespace A047111.P14859999767559416707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A000045 (n + 2)).toNat + A048996 (A189186 (n + 3)).toNat

end

end A047111.P14859999767559416707

/-!
# A047112: T(n,n), array T as in A047110.

The programs for A047112, there is no canonical definition to state claims against.
-/

/-! ## A047112.P12838754688149669690

`A047110(∑[4*n])`
-/

namespace A047112.P12838754688149669690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047112.P12838754688149669690

/-! ## A047112.P1836261623174782696

`A125778(∑[4*n])`
-/

namespace A047112.P1836261623174782696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047112.P1836261623174782696

/-! ## A047112.P13429762340622477242

`A047110(2*lcm(n, n+1))+A000038(n+1)`
-/

namespace A047112.P13429762340622477242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (2 * Nat.lcm n (n + 1)) + A000038 (n + 1)

end

end A047112.P13429762340622477242

/-! ## A047112.P17117522859405829751

`or(A000007(n), A047110(A046092(n)))`
-/

namespace A047112.P17117522859405829751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047110 (A046092 n).toNat)

end

end A047112.P17117522859405829751

/-! ## A047112.P14742450777023586678

`A047110(A046092(n))+A045840(2*n)`
-/

namespace A047112.P14742450777023586678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A046092 n).toNat + A045840 (2 * n)

end

end A047112.P14742450777023586678

/-!
# A047113: T(n,n-1), array T as in A047110.

The programs for A047113, there is no canonical definition to state claims against.
-/

/-! ## A047113.P482878401111975015

`A047110(2*(n+1)²)`
-/

namespace A047113.P482878401111975015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (2 * (n + 1) ^ 2)

end

end A047113.P482878401111975015

/-! ## A047113.P7115311162203109062

`record[A047110(A266287(n))]`
-/

namespace A047113.P7115311162203109062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A266287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P7115311162203109062

/-! ## A047113.P2389216888833223171

`A125778(A056220(n+1))`
-/

namespace A047113.P2389216888833223171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A056220 (n + 1)).toNat

end

end A047113.P2389216888833223171

/-! ## A047113.P17316957269685148287

`record[A047110(∑[A014682(n)])]`
-/

namespace A047113.P17316957269685148287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P17316957269685148287

/-! ## A047113.P4269891679849133417

`A125778(A054000(n+1)+1)`
-/

namespace A047113.P4269891679849133417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A054000 (n + 1) + 1).toNat

end

end A047113.P4269891679849133417

/-! ## A047113.P6544210367948749278

`record[A047110(2*A114327(n)²)]`
-/

namespace A047113.P6544210367948749278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (2 * A114327 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P6544210367948749278

/-! ## A047113.P449978743227604091

`record[A047110(∑[A062828(n+1)])]`
-/

namespace A047113.P449978743227604091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P449978743227604091

/-! ## A047113.P13134589218941184915

`record[A047110(A105638(n+3)+1)]`
-/

namespace A047113.P13134589218941184915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A105638 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P13134589218941184915

/-! ## A047113.P5454094038723834403

`record[A047110(∑[A225126(n+1)]+1)]`
-/

namespace A047113.P5454094038723834403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P5454094038723834403

/-! ## A047113.P3563552881214943539

`record[A047110(n*A008624(2*n+1))]`
-/

namespace A047113.P3563552881214943539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 ((n : ℤ) * A008624 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047113.P3563552881214943539

/-!
# A047114: T(n,n-2), array T as in A047110.

The programs for A047114, there is no canonical definition to state claims against.
-/

/-! ## A047114.P8838677121828811312

`A047110((n+1)²+(n+2)²)`
-/

namespace A047114.P8838677121828811312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047114.P8838677121828811312

/-! ## A047114.P1025014852242222466

`A125778(A132209(n+1))`
-/

namespace A047114.P1025014852242222466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A132209 (n + 1)).toNat

end

end A047114.P1025014852242222466

/-! ## A047114.P2152483806635615161

`A125778(A142463(n+1))`
-/

namespace A047114.P2152483806635615161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A142463 (n + 1)).toNat

end

end A047114.P2152483806635615161

/-! ## A047114.P6315150985066041719

`record[A047110(Δ[A235355(n)])]`
-/

namespace A047114.P6315150985066041719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047114.P6315150985066041719

/-! ## A047114.P2433784902300432554

`record[A047110(A266287(n)-n)]`
-/

namespace A047114.P2433784902300432554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A266287 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047114.P2433784902300432554

/-! ## A047114.P14552585809353068832

`A125778(A001844(n+1)-2)`
-/

namespace A047114.P14552585809353068832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A001844 (n + 1) - 2).toNat

end

end A047114.P14552585809353068832

/-! ## A047114.P15356036536990617219

`A125778(A099776(n+1)-2)`
-/

namespace A047114.P15356036536990617219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A099776 (n + 1) - 2).toNat

end

end A047114.P15356036536990617219

/-! ## A047114.P13607389576419484353

`record[A047110(∑[A014682(n)]-n)]`
-/

namespace A047114.P13607389576419484353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047114.P13607389576419484353

/-! ## A047114.P3001813665171631052

`record[A047110(n+1)*A143259(2*n+1)]`
-/

namespace A047114.P3001813665171631052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (n + 1) * A143259 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047114.P3001813665171631052

/-! ## A047114.P13131225890083348718

`record[gcd(A047110(2*n+1), A114327(2*n))]`
-/

namespace A047114.P13131225890083348718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047110 (2 * n + 1)) (A114327 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047114.P13131225890083348718

/-!
# A047115: T(n,n-3), array T as in A047110.

The programs for A047115, there is no canonical definition to state claims against.
-/

/-! ## A047115.P13752264599775726578

`A047110(A058331(n+2))`
-/

namespace A047115.P13752264599775726578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A058331 (n + 2)).toNat

end

end A047115.P13752264599775726578

/-! ## A047115.P12358641579780094554

`A125778(A054000(n+2))`
-/

namespace A047115.P12358641579780094554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A054000 (n + 2)).toNat

end

end A047115.P12358641579780094554

/-! ## A047115.P14181607661233993305

`A047110(A268581(n)+4)`
-/

namespace A047115.P14181607661233993305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A268581 n + 4).toNat

end

end A047115.P14181607661233993305

/-! ## A047115.P5208753801262520841

`A047110(A161532(n)+8)`
-/

namespace A047115.P5208753801262520841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A161532 n + 8).toNat

end

end A047115.P5208753801262520841

/-! ## A047115.P14470689488822568116

`A047110(A005408((n+2)²))`
-/

namespace A047115.P14470689488822568116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A005408 ((n + 2) ^ 2)).toNat

end

end A047115.P14470689488822568116

/-! ## A047115.P11537532335542588211

`record[A047110(A266287(n)+1)]`
-/

namespace A047115.P11537532335542588211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A266287 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047115.P11537532335542588211

/-! ## A047115.P5928697109435008048

`record[A047110(Δ[A235355(n)]-n)]`
-/

namespace A047115.P5928697109435008048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047115.P5928697109435008048

/-! ## A047115.P2622175109337152832

`record[A047110(A058331(A008624(n)))]`
-/

namespace A047115.P2622175109337152832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A058331 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047115.P2622175109337152832

/-!
# A047116: T(n,n+1), array T as in A047110.

The programs for A047116, there is no canonical definition to state claims against.
-/

/-! ## A047116.P14974003780174539108

`A125778(2*(n+1)²)`
-/

namespace A047116.P14974003780174539108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (2 * (n + 1) ^ 2)

end

end A047116.P14974003780174539108

/-! ## A047116.P9739028947474911504

`A047110((n+2)*2*n+1)`
-/

namespace A047116.P9739028947474911504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 ((n + 2) * (2 * n) + 1)

end

end A047116.P9739028947474911504

/-! ## A047116.P8801071396601081535

`record[A047110(A105638(n+3))]`
-/

namespace A047116.P8801071396601081535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A105638 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P8801071396601081535

/-! ## A047116.P9796925303668781375

`record[A047110(∑[A225126(n+1)])]`
-/

namespace A047116.P9796925303668781375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P9796925303668781375

/-! ## A047116.P17223777556691254993

`record[A047110(∑[A062828(n+2)])]`
-/

namespace A047116.P17223777556691254993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P17223777556691254993

/-! ## A047116.P4246101022540268393

`record[A047110(Δ[A235355(n)]+n)]`
-/

namespace A047116.P4246101022540268393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P4246101022540268393

/-! ## A047116.P8014337763785694241

`record[A047110(and(n, A077606(n+1)))]`
-/

namespace A047116.P8014337763785694241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.land (n : ℤ) (A077606 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P8014337763785694241

/-! ## A047116.P14773898863016790673

`record[A047110(and(n, A143259(n+1)))]`
-/

namespace A047116.P14773898863016790673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.land (n : ℤ) (A143259 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047116.P14773898863016790673

/-!
# A047117: T(n,n+2), array T as in A047110.

The programs for A047117, there is no canonical definition to state claims against.
-/

/-! ## A047117.P8734342141612272273

`A047116(n+1)-A047112(n+1)`
-/

namespace A047117.P8734342141612272273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047116 (n + 1) - A047112 (n + 1)

end

end A047117.P8734342141612272273

/-! ## A047117.P12745032087425826956

`A125778(A001844(n+1))`
-/

namespace A047117.P12745032087425826956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A001844 (n + 1)).toNat

end

end A047117.P12745032087425826956

/-! ## A047117.P8117563278985771162

`A047110(A090288(n)+1)`
-/

namespace A047117.P8117563278985771162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A090288 n + 1).toNat

end

end A047117.P8117563278985771162

/-! ## A047117.P13850125297856500444

`A047110(A132209(n+1))`
-/

namespace A047117.P13850125297856500444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A132209 (n + 1)).toNat

end

end A047117.P13850125297856500444

/-! ## A047117.P8968672701027029409

`A047110(A142463(n+1))`
-/

namespace A047117.P8968672701027029409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A142463 (n + 1)).toNat

end

end A047117.P8968672701027029409

/-! ## A047117.P15643542010774004729

`A125778(A099776(n+1))`
-/

namespace A047117.P15643542010774004729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A099776 (n + 1)).toNat

end

end A047117.P15643542010774004729

/-! ## A047117.P14001227799027574564

`A047110(A059993(n)+2)`
-/

namespace A047117.P14001227799027574564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A059993 n + 2).toNat

end

end A047117.P14001227799027574564

/-! ## A047117.P2071365890531159098

`A047110(or(1, A090288(n)))`
-/

namespace A047117.P2071365890531159098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.lor 1 (A090288 n)).toNat

end

end A047117.P2071365890531159098

/-! ## A047117.P6320599581578831835

`A047110(or(2, A059993(n)))`
-/

namespace A047117.P6320599581578831835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.lor 2 (A059993 n)).toNat

end

end A047117.P6320599581578831835

/-! ## A047117.P17688843209253352917

`A047110(A046092(n+1)-1)`
-/

namespace A047117.P17688843209253352917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A046092 (n + 1) - 1).toNat

end

end A047117.P17688843209253352917

/-!
# A047118: T(n,n+3), array T as in A047110.

The programs for A047118, there is no canonical definition to state claims against.
-/

/-! ## A047118.P11942202060946937772

`Δ[A047117(n)-∑[A047112(n)]]`
-/

namespace A047118.P11942202060946937772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047117 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047118.P11942202060946937772

/-! ## A047118.P17252961637554716589

`Δ[A047117(n)]-A047112(n+1)`
-/

namespace A047118.P17252961637554716589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047112 (n + 1)

end

end A047118.P17252961637554716589

/-! ## A047118.P14912037641733343883

`A047117(n+1)-A047116(n+1)`
-/

namespace A047118.P14912037641733343883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047117 (n + 1) - A047116 (n + 1)

end

end A047118.P14912037641733343883

/-! ## A047118.P1383760937548642668

`A047117(n+1)-(A047117(n)+A047112(n+1))`
-/

namespace A047118.P1383760937548642668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047117 (n + 1) - (A047117 n + A047112 (n + 1))

end

end A047118.P1383760937548642668

/-! ## A047118.P7469569240883804027

`A047110(2*(n+1)*(n+3))`
-/

namespace A047118.P7469569240883804027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (2 * ((n + 1) * (n + 3)))

end

end A047118.P7469569240883804027

/-! ## A047118.P15104229300831913907

`record[A047110(∑[A014682(n)+2])]`
-/

namespace A047118.P15104229300831913907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047118.P15104229300831913907

/-! ## A047118.P14744407209027956651

`record[A047110(and(n, A077606(n+2)))]`
-/

namespace A047118.P14744407209027956651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.land (n : ℤ) (A077606 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047118.P14744407209027956651

/-! ## A047118.P11696308205513905024

`record[A047110(and(n, A143259(n+2)))]`
-/

namespace A047118.P11696308205513905024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (Int.land (n : ℤ) (A143259 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047118.P11696308205513905024

/-! ## A047118.P6886163164339286751

`record[A047110(A054000(A324344(n)))]`
-/

namespace A047118.P6886163164339286751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A054000 (A324344 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047118.P6886163164339286751

/-!
# A047119: T(2n,n), array T as in A047110.

The programs for A047119, there is no canonical definition to state claims against.
-/

/-! ## A047119.P8661440250003866332

`A047110(A062728(n))`
-/

namespace A047119.P8661440250003866332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A062728 n).toNat

end

end A047119.P8661440250003866332

/-! ## A047119.P3040999044803487560

`A125778(A062725(n))`
-/

namespace A047119.P3040999044803487560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125778 (A062725 n).toNat

end

end A047119.P3040999044803487560

/-! ## A047119.P2953633449132006429

`A047110(A195160(2*n))`
-/

namespace A047119.P2953633449132006429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A195160 (2 * n)).toNat

end

end A047119.P2953633449132006429

/-! ## A047119.P523798718265915086

`A047110(A062725(n)+n)`
-/

namespace A047119.P523798718265915086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A062725 n + (n : ℤ)).toNat

end

end A047119.P523798718265915086

/-! ## A047119.P6287277798441247202

`A047110(A062708(n)+A008458(n))`
-/

namespace A047119.P6287277798441247202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A062708 n + A008458 n).toNat

end

end A047119.P6287277798441247202

/-!
# A047120: Array T read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and touches the line y=x/4 only at lattice points.

The programs for A047120, there is no canonical definition to state claims against.
-/

/-! ## A047120.P8155833987834006212

`or(A322585(A327083(n+1)), A349839(n))`
-/

namespace A047120.P8155833987834006212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322585 (A327083 (n + 1)).toNat) (A349839 n)

end

end A047120.P8155833987834006212

/-! ## A047120.P9668567381524365986

`A047030(n)+and(2, A320606(n+1))`
-/

namespace A047120.P9668567381524365986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047030 n + Int.land 2 (A320606 (n + 1))

end

end A047120.P9668567381524365986

/-! ## A047120.P4320415837565514448

`A349839(n%A090217(n+1))`
-/

namespace A047120.P4320415837565514448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349839 (Int.tmod (n : ℤ) (A090217 (n + 1))).toNat

end

end A047120.P4320415837565514448

/-! ## A047120.P2448564354849836637

`gcd(A090217(n+1), A349839(n))`
-/

namespace A047120.P2448564354849836637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090217 (n + 1)) (A349839 n)

end

end A047120.P2448564354849836637

/-! ## A047120.P13830840272846370533

`A047030(n)%A001211(n+1)`
-/

namespace A047120.P13830840272846370533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047030 n) (A001211 (n + 1))

end

end A047120.P13830840272846370533

/-!
# A047121: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047120.

The programs for A047121, there is no canonical definition to state claims against.
-/

/-! ## A047121.P12432032968925850193

`A131577(n)+A110591(A000220(2*n+1))`
-/

namespace A047121.P12432032968925850193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A110591 (A000220 (2 * n + 1)).toNat

end

end A047121.P12432032968925850193

/-! ## A047121.P13872815022753807748

`A003056(A127498(n)+1)`
-/

namespace A047121.P13872815022753807748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A127498 n + 1).toNat

end

end A047121.P13872815022753807748

/-! ## A047121.P12199303379300755583

`A073188(A260304(n))-1`
-/

namespace A047121.P12199303379300755583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A260304 n).toNat - 1

end

end A047121.P12199303379300755583

/-! ## A047121.P18192889196370767413

`A003056(xor(n, A149968(n)))`
-/

namespace A047121.P18192889196370767413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (n : ℤ) (A149968 n)).toNat

end

end A047121.P18192889196370767413

/-!
# A047122: T(n,n), array T as in A047120.

The programs for A047122, there is no canonical definition to state claims against.
-/

/-! ## A047122.P14200984709472294108

`A047120(∑[4*n])`
-/

namespace A047122.P14200984709472294108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047122.P14200984709472294108

/-! ## A047122.P1367236713511358213

`abs(1-A047120(A046092(n)))+1`
-/

namespace A047122.P1367236713511358213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A047120 (A046092 n).toNat| + 1

end

end A047122.P1367236713511358213

/-! ## A047122.P8628709130654432215

`A047120(A046092(n))%A020698(n)`
-/

namespace A047122.P8628709130654432215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047120 (A046092 n).toNat) (A020698 n)

end

end A047122.P8628709130654432215

/-! ## A047122.P8092966926965108728

`gcd(A000038(n), A047120(A046092(n)))`
-/

namespace A047122.P8092966926965108728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047120 (A046092 n).toNat)

end

end A047122.P8092966926965108728

/-! ## A047122.P12305812550229268484

`lcm(A020985(n), A047120(A046092(n)))`
-/

namespace A047122.P12305812550229268484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A047120 (A046092 n).toNat)

end

end A047122.P12305812550229268484

/-! ## A047122.P420149376342990853

`or(A000007(n), A047120(A046092(n)))`
-/

namespace A047122.P420149376342990853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047120 (A046092 n).toNat)

end

end A047122.P420149376342990853

/-! ## A047122.P10779667855142801247

`A007318(C(2, n))*A047120(A046092(n))`
-/

namespace A047122.P10779667855142801247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A047120 (A046092 n).toNat

end

end A047122.P10779667855142801247

/-!
# A047123: T(n,n-1), array T as in A047120.

The programs for A047123, there is no canonical definition to state claims against.
-/

/-! ## A047123.P3305063236802985015

`A047120(2*(n+1)²)`
-/

namespace A047123.P3305063236802985015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (2 * (n + 1) ^ 2)

end

end A047123.P3305063236802985015

/-! ## A047123.P2407291432496376529

`A047120(A184636(n+1))+char[A157947(n+1)]`
-/

namespace A047123.P2407291432496376529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A184636 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047123.P2407291432496376529

/-! ## A047123.P17943495333022537980

`A047120(A184636(n+1))%A037955(2*(n+2))`
-/

namespace A047123.P17943495333022537980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047120 (A184636 (n + 1)).toNat) (A037955 (2 * (n + 2)))

end

end A047123.P17943495333022537980

/-! ## A047123.P12255984173836346254

`A047120(A184636(n+1))^and(1, A000040(n+1))`
-/

namespace A047123.P12255984173836346254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047120 (A184636 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A047123.P12255984173836346254

/-! ## A047123.P2814502843588013680

`A047120(A184636(n+1))+∑[A065346(n+1)]%2`
-/

namespace A047123.P2814502843588013680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A184636 (n + 1)).toNat + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A047123.P2814502843588013680

/-! ## A047123.P2319587175963015318

`floor(A047120(A184636(n+1))+A038573(n)/(n+1))`
-/

namespace A047123.P2319587175963015318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047120 (A184636 (n + 1)).toNat : ℚ) + (A038573 n : ℚ) / (n + 1 : ℚ)⌋

end

end A047123.P2319587175963015318

/-! ## A047123.P8176347298915055739

`A047120(A184636(n+1))+(A160534(n)%A160551(n))%7`
-/

namespace A047123.P8176347298915055739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A184636 (n + 1)).toNat + Int.tmod (Int.tmod (A160534 n) (A160551 n)) 7

end

end A047123.P8176347298915055739

/-!
# A047124: T(n,n-2), array T as in A047120.

The programs for A047124, there is no canonical definition to state claims against.
-/

/-! ## A047124.P5246189235780546524

`abs(Δ[A047123(n+1)]-A047126(n))`
-/

namespace A047124.P5246189235780546524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A047126 n|

end

end A047124.P5246189235780546524

/-! ## A047124.P3275900637561373533

`A047120((n+1)²+(n+2)²)`
-/

namespace A047124.P3275900637561373533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047124.P3275900637561373533

/-! ## A047124.P7998276281936957217

`abs(A047120(A099776(n+1))-1)+1`
-/

namespace A047124.P7998276281936957217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047120 (A099776 (n + 1)).toNat - 1| + 1

end

end A047124.P7998276281936957217

/-! ## A047124.P9805220718334025183

`A047120(A099776(n+1))^A178334(n)`
-/

namespace A047124.P9805220718334025183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047120 (A099776 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A047124.P9805220718334025183

/-! ## A047124.P16223996934652905976

`A162197(C(2, n))+A047120(A099776(n+1))`
-/

namespace A047124.P16223996934652905976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162197 (Nat.choose 2 n) + A047120 (A099776 (n + 1)).toNat

end

end A047124.P16223996934652905976

/-! ## A047124.P3540444987791076856

`gcd(A004526(C(2, n)), A047120(A099776(n+1)))`
-/

namespace A047124.P3540444987791076856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (Nat.choose 2 n)) (A047120 (A099776 (n + 1)).toNat)

end

end A047124.P3540444987791076856

/-! ## A047124.P4879549188378651628

`A047120(A099776(n+1))+char[A162199(n+2)]`
-/

namespace A047124.P4879549188378651628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A099776 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047124.P4879549188378651628

/-! ## A047124.P11717295264054315474

`A047120(A099776(n+1))+char[A162164(n+3)]`
-/

namespace A047124.P11717295264054315474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162164 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A099776 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A047124.P11717295264054315474

/-! ## A047124.P16896037685486677010

`A259362(A006530(n+2))+A047120(A099776(n+1))`
-/

namespace A047124.P16896037685486677010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259362 (A006530 (n + 2)).toNat + A047120 (A099776 (n + 1)).toNat

end

end A047124.P16896037685486677010

/-!
# A047125: T(n,n-3), array T as in A047120.

The programs for A047125, there is no canonical definition to state claims against.
-/

/-! ## A047125.P4066416838018272548

`A047120(A268581(n)+4)`
-/

namespace A047125.P4066416838018272548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A268581 n + 4).toNat

end

end A047125.P4066416838018272548

/-! ## A047125.P542824755798408463

`A047120(A005408((n+2)²))`
-/

namespace A047125.P542824755798408463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A005408 ((n + 2) ^ 2)).toNat

end

end A047125.P542824755798408463

/-! ## A047125.P1383342979203646790

`A047120(A184636(n+2)+1)`
-/

namespace A047125.P1383342979203646790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A184636 (n + 2) + 1).toNat

end

end A047125.P1383342979203646790

/-! ## A047125.P7863314527562397704

`A047120(A152811(n+1)+7)`
-/

namespace A047125.P7863314527562397704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A152811 (n + 1) + 7).toNat

end

end A047125.P7863314527562397704

/-! ## A047125.P14194990392163637280

`A047120(eq[n, A038722(n+1)+2])`
-/

namespace A047125.P14194990392163637280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047125.P14194990392163637280

/-! ## A047125.P1191027536415794490

`A047120(eq[A038722(n+1), A289207(n)])`
-/

namespace A047125.P1191027536415794490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A047125.P1191027536415794490

/-! ## A047125.P8162799802095717931

`A047120(eq[7, A253146(n+1)])`
-/

namespace A047125.P8162799802095717931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047125.P8162799802095717931

/-!
# A047126: T(n,n+1), array T as in A047120.

The programs for A047126, there is no canonical definition to state claims against.
-/

/-! ## A047126.P6633415632575357667

`A047120(2*n+∑[4*n]+1)`
-/

namespace A047126.P6633415632575357667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A047126.P6633415632575357667

/-! ## A047126.P15166713137861529758

`A047120(A056220(n+1))%A042180(n)`
-/

namespace A047126.P15166713137861529758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047120 (A056220 (n + 1)).toNat) (A042180 n)

end

end A047126.P15166713137861529758

/-! ## A047126.P5779998515600495750

`gcd(A000038(n), A047120(A056220(n+1)))`
-/

namespace A047126.P5779998515600495750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047120 (A056220 (n + 1)).toNat)

end

end A047126.P5779998515600495750

/-! ## A047126.P6679292015026661198

`lcm(A033999(n), A047120(A056220(n+1)))`
-/

namespace A047126.P6679292015026661198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A047120 (A056220 (n + 1)).toNat)

end

end A047126.P6679292015026661198

/-! ## A047126.P14815336739867514071

`A007318(C(2, n))*A047120(A056220(n+1))`
-/

namespace A047126.P14815336739867514071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A047120 (A056220 (n + 1)).toNat

end

end A047126.P14815336739867514071

/-! ## A047126.P11573322179937811975

`A047120(A056220(n+1))/A000041(C(2, n+2))`
-/

namespace A047126.P11573322179937811975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047120 (A056220 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A047126.P11573322179937811975

/-! ## A047126.P14139707059263810122

`A047120(A056220(n+1))/A000041(round(n/(n+1)))`
-/

namespace A047126.P14139707059263810122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047120 (A056220 (n + 1)).toNat : ℚ) / (A000041 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

end

end A047126.P14139707059263810122

/-! ## A047126.P2817587699963703278

`A047120(A056220(n+1))^A000032(round(n/(n+1)))`
-/

namespace A047126.P2817587699963703278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047120 (A056220 (n + 1)).toNat : ℚ) ^ (A000032 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A047126.P2817587699963703278

/-!
# A047127: T(n,n+2), array T as in A047120.

The programs for A047127, there is no canonical definition to state claims against.
-/

/-! ## A047127.P1991281509534398609

`A047126(n+1)-A047122(n+1)`
-/

namespace A047127.P1991281509534398609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047126 (n + 1) - A047122 (n + 1)

end

end A047127.P1991281509534398609

/-! ## A047127.P6440698505049270883

`A047120(A132209(n+1))`
-/

namespace A047127.P6440698505049270883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A132209 (n + 1)).toNat

end

end A047127.P6440698505049270883

/-! ## A047127.P11479050554542407517

`A047120(A142463(n+1))`
-/

namespace A047127.P11479050554542407517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A142463 (n + 1)).toNat

end

end A047127.P11479050554542407517

/-! ## A047127.P13799829026277370614

`A047120(A046092(n+1)-1)`
-/

namespace A047127.P13799829026277370614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A046092 (n + 1) - 1).toNat

end

end A047127.P13799829026277370614

/-! ## A047127.P6450945048165946592

`A047120(A001844(n+1)-2)`
-/

namespace A047127.P6450945048165946592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A001844 (n + 1) - 2).toNat

end

end A047127.P6450945048165946592

/-! ## A047127.P17549451515733178170

`A047120(A099776(n+1)-2)`
-/

namespace A047127.P17549451515733178170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A099776 (n + 1) - 2).toNat

end

end A047127.P17549451515733178170

/-! ## A047127.P17953531952760309174

`A047120(eq[1, A253146(n+2)])`
-/

namespace A047127.P17953531952760309174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A047127.P17953531952760309174

/-!
# A047128: T(n,n+3), array T as in A047120.

The programs for A047128, there is no canonical definition to state claims against.
-/

/-! ## A047128.P12078356071099196034

`Δ[A047127(n)-∑[A047122(n)]]`
-/

namespace A047128.P12078356071099196034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047127 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047128.P12078356071099196034

/-! ## A047128.P5461155600878804748

`Δ[A047127(n)]-A047122(n+1)`
-/

namespace A047128.P5461155600878804748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047122 (n + 1)

end

end A047128.P5461155600878804748

/-! ## A047128.P6974402005997033391

`A047127(n+1)-A047126(n+1)`
-/

namespace A047128.P6974402005997033391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047127 (n + 1) - A047126 (n + 1)

end

end A047128.P6974402005997033391

/-! ## A047128.P14754460576771187750

`A047127(n+1)-(A047127(n)+A047122(n+1))`
-/

namespace A047128.P14754460576771187750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047127 (n + 1) - (A047127 n + A047122 (n + 1))

end

end A047128.P14754460576771187750

/-! ## A047128.P15807102363227924130

`A047120(2*(n+1)*(n+3))`
-/

namespace A047128.P15807102363227924130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (2 * ((n + 1) * (n + 3)))

end

end A047128.P15807102363227924130

/-!
# A047129: T(2n,n), array T as in A047120.

The programs for A047129, there is no canonical definition to state claims against.
-/

/-! ## A047129.P10539514527717560791

`A047120(A062728(n))`
-/

namespace A047129.P10539514527717560791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A062728 n).toNat

end

end A047129.P10539514527717560791

/-! ## A047129.P12900240747374156768

`A047120(A062725(n)+n)`
-/

namespace A047129.P12900240747374156768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A062725 n + (n : ℤ)).toNat

end

end A047129.P12900240747374156768

/-! ## A047129.P12639421761762986460

`A047120(n/2*A017245(n))`
-/

namespace A047129.P12639421761762986460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A017245 n : ℚ))).toNat

end

end A047129.P12639421761762986460

/-! ## A047129.P12532504536023541709

`A047120(A055999(n)+(2*n)²)`
-/

namespace A047129.P12532504536023541709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A055999 n + ((2 * n) ^ 2 : ℤ)).toNat

end

end A047129.P12532504536023541709

/-! ## A047129.P15235913127513053104

`A047120(A033954(n)+A000217(n))`
-/

namespace A047129.P15235913127513053104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047120 (A033954 n + A000217 n).toNat

end

end A047129.P15235913127513053104

/-!
# A047130: Array read by descending antidiagonals: T(h,k) is the number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no up-step crosses the line y = 3x/4. (Thus a path crosses the line only at lattice points and on right-steps.)

The programs for A047130, there is no canonical definition to state claims against.
-/

/-! ## A047130.P4712723573467664487

`A050176(n+1)*A053150(A119307(n))`
-/

namespace A047130.P4712723573467664487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (n + 1) * A053150 (A119307 n).toNat

end

end A047130.P4712723573467664487

/-! ## A047130.P6882265506064503910

`A008315(A344646(n))*A053150(A119307(n))`
-/

namespace A047130.P6882265506064503910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A344646 n).toNat * A053150 (A119307 n).toNat

end

end A047130.P6882265506064503910

/-! ## A047130.P16270213991543124492

`A047072(A182834(n+1))*A053150(A119307(n))`
-/

namespace A047130.P16270213991543124492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A182834 (n + 1)).toNat * A053150 (A119307 n).toNat

end

end A047130.P16270213991543124492

/-! ## A047130.P18272774463225143653

`A047072(A183572(n+1))*A053150(A119307(n))`
-/

namespace A047130.P18272774463225143653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A183572 (n + 1)).toNat * A053150 (A119307 n).toNat

end

end A047130.P18272774463225143653

/-! ## A047130.P3818175312073894123

`A047072(A101776(n)+n)*A053150(A119307(n))`
-/

namespace A047130.P3818175312073894123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047072 (A101776 n + (n : ℤ)).toNat * A053150 (A119307 n).toNat

end

end A047130.P3818175312073894123

/-!
# A047131: a(n) = Sum_{i=0..n} A047130(i, n-i).

The programs for A047131, there is no canonical definition to state claims against.
-/

/-! ## A047131.P8697843677171017854

`record[A050361(n+1)*A122908(n)]`
-/

namespace A047131.P8697843677171017854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1) * A122908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047131.P8697843677171017854

/-! ## A047131.P10275881899750418992

`record[A050361(n+2)*A357136(n)]`
-/

namespace A047131.P10275881899750418992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 2) * A357136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047131.P10275881899750418992

/-! ## A047131.P15797886275318848853

`record[A122908(n)*A325144(A118032(n))]`
-/

namespace A047131.P15797886275318848853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122908 n * A325144 (A118032 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047131.P15797886275318848853

/-! ## A047131.P10338154640980534260

`A145269(A263148(2*(n+1)))+A001405(n+1)`
-/

namespace A047131.P10338154640980534260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145269 (A263148 (2 * (n + 1))).toNat + A001405 (n + 1)

end

end A047131.P10338154640980534260

/-! ## A047131.P17275265909047550245

`A061395(A303456(3*n+2))+A014495(n+1)`
-/

namespace A047131.P17275265909047550245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A303456 (3 * n + 2)).toNat + A014495 (n + 1)

end

end A047131.P17275265909047550245

/-!
# A047132: T(n,n), array T as in A047130.

The programs for A047132, there is no canonical definition to state claims against.
-/

/-! ## A047132.P4613191190435152223

`A047130(∑[4*n])`
-/

namespace A047132.P4613191190435152223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047132.P4613191190435152223

/-! ## A047132.P7796542330749300408

`and(-1, A047130(n*Δ[n²]+n))`
-/

namespace A047132.P7796542330749300408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A047130 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)).toNat)

end

end A047132.P7796542330749300408

/-! ## A047132.P16551155595669966921

`A047130(2*lcm(n, n+1))+A000038(n+1)`
-/

namespace A047132.P16551155595669966921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (2 * Nat.lcm n (n + 1)) + A000038 (n + 1)

end

end A047132.P16551155595669966921

/-! ## A047132.P12424681669631426611

`or(A047130(A046092(n)), A103675(n))`
-/

namespace A047132.P12424681669631426611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047130 (A046092 n).toNat) (A103675 n)

end

end A047132.P12424681669631426611

/-! ## A047132.P11148299042859802003

`A066568(A347689(n))+A047130(A046092(n))`
-/

namespace A047132.P11148299042859802003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A347689 n).toNat + A047130 (A046092 n).toNat

end

end A047132.P11148299042859802003

/-! ## A047132.P14273877498476903006

`A047130(A046092(n))*A211261(A002476(n+1))`
-/

namespace A047132.P14273877498476903006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A046092 n).toNat * A211261 (A002476 (n + 1)).toNat

end

end A047132.P14273877498476903006

/-!
# A047133: T(n,n-1), array T as in A047130.

The programs for A047133, there is no canonical definition to state claims against.
-/

/-! ## A047133.P10544691131003542145

`A047130(2*(n+1)²)`
-/

namespace A047133.P10544691131003542145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (2 * (n + 1) ^ 2)

end

end A047133.P10544691131003542145

/-! ## A047133.P9139249878395066022

`record[A047130(A266287(n))]`
-/

namespace A047133.P9139249878395066022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P9139249878395066022

/-! ## A047133.P11566632460709167591

`record[A047130(∑[A014682(n)])]`
-/

namespace A047133.P11566632460709167591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P11566632460709167591

/-! ## A047133.P10288961304451922424

`record[A047130(2*A162593(n))]`
-/

namespace A047133.P10288961304451922424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (2 * A162593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P10288961304451922424

/-! ## A047133.P6114690581191625650

`record[A047130(n*A004526(n))]`
-/

namespace A047133.P6114690581191625650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 ((n : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P6114690581191625650

/-! ## A047133.P12874993072756297310

`record[A047130(n*A025480(n))]`
-/

namespace A047133.P12874993072756297310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 ((n : ℤ) * A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P12874993072756297310

/-! ## A047133.P10575203727660590403

`record[A047130(A031940(n+1)-1)]`
-/

namespace A047133.P10575203727660590403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A031940 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P10575203727660590403

/-! ## A047133.P8289187781804386715

`record[A010052(n)*A047130(2*n)]`
-/

namespace A047133.P8289187781804386715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A047130 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P8289187781804386715

/-! ## A047133.P15625888101329791796

`record[A047130(A025480(n²))]`
-/

namespace A047133.P15625888101329791796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A025480 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047133.P15625888101329791796

/-!
# A047134: T(n,n-2), array T as in A047130.

The programs for A047134, there is no canonical definition to state claims against.
-/

/-! ## A047134.P9692270284364559507

`A047130((n+1)²+(n+2)²)`
-/

namespace A047134.P9692270284364559507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047134.P9692270284364559507

/-! ## A047134.P17958216349108731288

`record[A047130(Δ[A235355(n)])]`
-/

namespace A047134.P17958216349108731288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047134.P17958216349108731288

/-! ## A047134.P15507768013552268330

`record[A047130(A330613(n+1))]`
-/

namespace A047134.P15507768013552268330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047134.P15507768013552268330

/-! ## A047134.P17784556755443877219

`record[A047130(A266287(n)-n)]`
-/

namespace A047134.P17784556755443877219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266287 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047134.P17784556755443877219

/-! ## A047134.P4381230705126863353

`record[A047130(∑[A014682(n)]-n)]`
-/

namespace A047134.P4381230705126863353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047134.P4381230705126863353

/-! ## A047134.P17831991628943194133

`record[A033999(n)*A047130(A266723(n))]`
-/

namespace A047134.P17831991628943194133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A047130 (A266723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047134.P17831991628943194133

/-! ## A047134.P3921108664892729285

`or(A000007(n), A047130(A099776(n+1)))`
-/

namespace A047134.P3921108664892729285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047130 (A099776 (n + 1)).toNat)

end

end A047134.P3921108664892729285

/-! ## A047134.P18433386642403643081

`A047130(A099776(n+1))+A000007(n+4)`
-/

namespace A047134.P18433386642403643081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A099776 (n + 1)).toNat + A000007 (n + 4)

end

end A047134.P18433386642403643081

/-!
# A047135: a(n) = T(n,n-3), array T as in A047130.

The programs for A047135, there is no canonical definition to state claims against.
-/

/-! ## A047135.P831222946639513601

`A047130((n+3)²+n*(n+2))`
-/

namespace A047135.P831222946639513601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 ((n + 3) ^ 2 + n * (n + 2))

end

end A047135.P831222946639513601

/-! ## A047135.P6711598944224977694

`record[A047130(A031940(n+1))]`
-/

namespace A047135.P6711598944224977694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A031940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047135.P6711598944224977694

/-! ## A047135.P15517395745138286508

`record[A047130(A266287(n)+1)]`
-/

namespace A047135.P15517395745138286508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266287 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047135.P15517395745138286508

/-! ## A047135.P16291561719842749006

`record[A047130(Δ[A235355(n)]-n)]`
-/

namespace A047135.P16291561719842749006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047135.P16291561719842749006

/-! ## A047135.P17696547320592421787

`record[A010052(n)*A047130(2*n+1)]`
-/

namespace A047135.P17696547320592421787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A047130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047135.P17696547320592421787

/-! ## A047135.P12595957482054224082

`gcd(A000038(n), A047130(A268581(n)+4))`
-/

namespace A047135.P12595957482054224082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047130 (A268581 n + 4).toNat)

end

end A047135.P12595957482054224082

/-! ## A047135.P2774701796133295265

`A047130(A268581(n)+4)%A203665(n+1)`
-/

namespace A047135.P2774701796133295265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047130 (A268581 n + 4).toNat) (A203665 (n + 1))

end

end A047135.P2774701796133295265

/-!
# A047136: a(n) = T(n,n+1), array T as in A047130.

The programs for A047136, there is no canonical definition to state claims against.
-/

/-! ## A047136.P17509373003612288841

`A047130((n+1)*Δ[n²]+n)`
-/

namespace A047136.P17509373003612288841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)).toNat

end

end A047136.P17509373003612288841

/-! ## A047136.P2781567016891393003

`record[A047130(4*C(ceil(n/2), 2)+n)]`
-/

namespace A047136.P2781567016891393003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (4 * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047136.P2781567016891393003

/-! ## A047136.P10943551841358805833

`record[A047130(Δ[A235355(n)]+n)]`
-/

namespace A047136.P10943551841358805833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047136.P10943551841358805833

/-! ## A047136.P1924663672056218418

`record[A047130(A266723(n)-(n+1))]`
-/

namespace A047136.P1924663672056218418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266723 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047136.P1924663672056218418

/-! ## A047136.P14243218473214675502

`record[A010052(n+1)*A047130(2*n+1)]`
-/

namespace A047136.P14243218473214675502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A047130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047136.P14243218473214675502

/-! ## A047136.P18019325438480591220

`record[A047130(A031940(n+1)+A025480(n))]`
-/

namespace A047136.P18019325438480591220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A031940 (n + 1) + A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047136.P18019325438480591220

/-!
# A047137: a(n) = T(n,n+2), array T as in A047130.

The programs for A047137, there is no canonical definition to state claims against.
-/

/-! ## A047137.P15810772627000070190

`A047136(n+1)-A047132(n+1)`
-/

namespace A047137.P15810772627000070190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047136 (n + 1) - A047132 (n + 1)

end

end A047137.P15810772627000070190

/-! ## A047137.P6329271642562743357

`record[A047130(A266723(n))]`
-/

namespace A047137.P6329271642562743357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047137.P6329271642562743357

/-! ## A047137.P8797453249464757105

`A047130(A090288(n)+1)`
-/

namespace A047137.P8797453249464757105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A090288 n + 1).toNat

end

end A047137.P8797453249464757105

/-! ## A047137.P15747260882470319866

`A047130(A132209(n+1))`
-/

namespace A047137.P15747260882470319866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A132209 (n + 1)).toNat

end

end A047137.P15747260882470319866

/-! ## A047137.P6749498286255267963

`A047130(A142463(n+1))`
-/

namespace A047137.P6749498286255267963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A142463 (n + 1)).toNat

end

end A047137.P6749498286255267963

/-! ## A047137.P2510845552297174844

`A047130(A059993(n)+2)`
-/

namespace A047137.P2510845552297174844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A059993 n + 2).toNat

end

end A047137.P2510845552297174844

/-! ## A047137.P15149850692906851361

`A047130(or(1, A090288(n)))`
-/

namespace A047137.P15149850692906851361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (Int.lor 1 (A090288 n)).toNat

end

end A047137.P15149850692906851361

/-! ## A047137.P914618127164010881

`A047130(xor(2, A059993(n)))`
-/

namespace A047137.P914618127164010881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (Int.xor 2 (A059993 n)).toNat

end

end A047137.P914618127164010881

/-! ## A047137.P4007083957567013611

`A047130(A046092(n+1)-1)`
-/

namespace A047137.P4007083957567013611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A046092 (n + 1) - 1).toNat

end

end A047137.P4007083957567013611

/-! ## A047137.P18043043865594317843

`A047130(A001844(n+1)-2)`
-/

namespace A047137.P18043043865594317843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A001844 (n + 1) - 2).toNat

end

end A047137.P18043043865594317843

/-!
# A047138: a(n) = T(n,n+3), array T as in A047130.

The programs for A047138, there is no canonical definition to state claims against.
-/

/-! ## A047138.P3369340482661874620

`Δ[A047137(n)-∑[A047132(n)]]`
-/

namespace A047138.P3369340482661874620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047137 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047138.P3369340482661874620

/-! ## A047138.P11916297404946057364

`Δ[A047137(n)]-A047132(n+1)`
-/

namespace A047138.P11916297404946057364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047132 (n + 1)

end

end A047138.P11916297404946057364

/-! ## A047138.P2008677761875694285

`A047137(n+1)-A047136(n+1)`
-/

namespace A047138.P2008677761875694285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047137 (n + 1) - A047136 (n + 1)

end

end A047138.P2008677761875694285

/-! ## A047138.P5598825175729761616

`A047137(n+1)-(A047137(n)+A047132(n+1))`
-/

namespace A047138.P5598825175729761616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047137 (n + 1) - (A047137 n + A047132 (n + 1))

end

end A047138.P5598825175729761616

/-! ## A047138.P14602155371743082077

`A047130(2*(n+1)*(n+3))`
-/

namespace A047138.P14602155371743082077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (2 * ((n + 1) * (n + 3)))

end

end A047138.P14602155371743082077

/-! ## A047138.P1850864764207697667

`record[A047130(∑[A014682(n)+2])]`
-/

namespace A047138.P1850864764207697667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047138.P1850864764207697667

/-! ## A047138.P9983119757155051025

`record[A047130(A266287(n)+A004526(n))]`
-/

namespace A047138.P9983119757155051025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A266287 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047138.P9983119757155051025

/-!
# A047139: T(2n,n), array T as in A047130.

The programs for A047139, there is no canonical definition to state claims against.
-/

/-! ## A047139.P12134979265075953661

`A047130(A062728(n))`
-/

namespace A047139.P12134979265075953661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A062728 n).toNat

end

end A047139.P12134979265075953661

/-! ## A047139.P2312330290377017110

`A047130(A062725(n)+n)`
-/

namespace A047139.P2312330290377017110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A062725 n + (n : ℤ)).toNat

end

end A047139.P2312330290377017110

/-! ## A047139.P6402075345112398512

`A047130(A027468(n)-n)`
-/

namespace A047139.P6402075345112398512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A027468 n - (n : ℤ)).toNat

end

end A047139.P6402075345112398512

/-! ## A047139.P7444265475705544980

`A047130(A002943(n)+A000096(n))`
-/

namespace A047139.P7444265475705544980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A002943 n + A000096 n).toNat

end

end A047139.P7444265475705544980

/-! ## A047139.P6544342224459638145

`A047130(A000096(A008585(n))-n)`
-/

namespace A047139.P6544342224459638145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047130 (A000096 (A008585 n).toNat - (n : ℤ)).toNat

end

end A047139.P6544342224459638145

/-!
# A047140: Array read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no up-step crosses the line y=4x/3. (Thus a path crosses the line only at lattice points and on right-steps.).

The programs for A047140, there is no canonical definition to state claims against.
-/

/-! ## A047140.P14241899692022115441

`gcd(A000010(A160562(n)), A047150(n))`
-/

namespace A047140.P14241899692022115441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A160562 n).toNat) (A047150 n)

end

end A047140.P14241899692022115441

/-! ## A047140.P17357563444190110716

`and(-A065648(A321312(n)), A047150(n))`
-/

namespace A047140.P17357563444190110716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A065648 (A321312 n).toNat) (A047150 n)

end

end A047140.P17357563444190110716

/-! ## A047140.P8018112866326411351

`gcd(Δ[A257564(2*n)], A257564(A209414(n+1)))`
-/

namespace A047140.P8018112866326411351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A257564 (A209414 (n + 1)).toNat)

end

end A047140.P8018112866326411351

/-! ## A047140.P9127603714125537927

`A047150(n)-A195207(A000001(3*n+1))`
-/

namespace A047140.P9127603714125537927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 n - A195207 (A000001 (3 * n + 1)).toNat

end

end A047140.P9127603714125537927

/-! ## A047140.P1379091887894457693

`A047150(n)%A114058(A086620(n+4))`
-/

namespace A047140.P1379091887894457693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047150 n) (A114058 (A086620 (n + 4)).toNat)

end

end A047140.P1379091887894457693

/-!
# A047141: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047140.

The programs for A047141, there is no canonical definition to state claims against.
-/

/-! ## A047141.P4497690796648195489

`A350786(A090906(n+2))`
-/

namespace A047141.P4497690796648195489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A090906 (n + 2)).toNat

end

end A047141.P4497690796648195489

/-! ## A047141.P7355697167042768376

`record[A238745(A353562(n+1))]`
-/

namespace A047141.P7355697167042768376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A353562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047141.P7355697167042768376

/-! ## A047141.P17031293276459657477

`A157271(A089827(n+2)/2)`
-/

namespace A047141.P17031293276459657477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway ((A089827 (n + 2) : ℚ) / 2)).toNat

end

end A047141.P17031293276459657477

/-! ## A047141.P3908863577734123955

`A000010(C(A164161(n+1), ∑{digits}[n, 10^#]%9))`
-/

namespace A047141.P3908863577734123955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose (A164161 (n + 1)).toNat (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A047141.P3908863577734123955

/-! ## A047141.P15858593335553078730

`A131883(A100071(n+1))`
-/

namespace A047141.P15858593335553078730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A100071 (n + 1)).toNat

end

end A047141.P15858593335553078730

/-!
# A047142: T(n,n), array T as in A047140.

The programs for A047142, there is no canonical definition to state claims against.
-/

/-! ## A047142.P5666445331469168494

`A047140(∑[4*n])`
-/

namespace A047142.P5666445331469168494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047142.P5666445331469168494

/-! ## A047142.P14674952453763535366

`record[A047140(A092530(n))]`
-/

namespace A047142.P14674952453763535366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P14674952453763535366

/-! ## A047142.P12077035336945081670

`record[A047140(∑[A071045(n)])]`
-/

namespace A047142.P12077035336945081670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P12077035336945081670

/-! ## A047142.P8805351259217002306

`record[A047140(∑[A014682(n)+1])]`
-/

namespace A047142.P8805351259217002306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P8805351259217002306

/-! ## A047142.P12340865697403096272

`record[A047140(n*A008624(2*n))]`
-/

namespace A047142.P12340865697403096272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 ((n : ℤ) * A008624 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P12340865697403096272

/-! ## A047142.P17452593685178686647

`record[A047140(A182456(n))]`
-/

namespace A047142.P17452593685178686647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A182456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P17452593685178686647

/-! ## A047142.P16983926442287794760

`record[A047140(A057979(n²))]`
-/

namespace A047142.P16983926442287794760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A057979 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047142.P16983926442287794760

/-!
# A047143: T(n,n-1), array T as in A047140.

The programs for A047143, there is no canonical definition to state claims against.
-/

/-! ## A047143.P464984375529884043

`A047142(n+1)-A047146(n)`
-/

namespace A047143.P464984375529884043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047142 (n + 1) - A047146 n

end

end A047143.P464984375529884043

/-! ## A047143.P3417588279055323917

`record[A047142(A137734(n))]-A047146(n)`
-/

namespace A047143.P3417588279055323917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047142 (A137734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047146 n

end

end A047143.P3417588279055323917

/-! ## A047143.P13206852633322475771

`A047140(2*(n+1)²)`
-/

namespace A047143.P13206852633322475771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (2 * (n + 1) ^ 2)

end

end A047143.P13206852633322475771

/-! ## A047143.P10776897996770339713

`record[A047140(A266287(n))]`
-/

namespace A047143.P10776897996770339713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A266287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P10776897996770339713

/-! ## A047143.P8663136254426029867

`record[A047140(A273943(n²))]`
-/

namespace A047143.P8663136254426029867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A273943 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P8663136254426029867

/-! ## A047143.P2290175490536117953

`record[A047140(∑[A014682(n)])]`
-/

namespace A047143.P2290175490536117953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P2290175490536117953

/-! ## A047143.P12232918982737329262

`record[A047140(2*A073254(n))]`
-/

namespace A047143.P12232918982737329262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (2 * A073254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P12232918982737329262

/-! ## A047143.P8573250346905463297

`record[A047140(A092530(n)-n)]`
-/

namespace A047143.P8573250346905463297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A092530 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P8573250346905463297

/-! ## A047143.P15247412662838792023

`record[A047140(n*A273943(n))]`
-/

namespace A047143.P15247412662838792023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 ((n : ℤ) * A273943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P15247412662838792023

/-! ## A047143.P6374115660391112583

`record[A047140(∑[A071045(n)+1])]`
-/

namespace A047143.P6374115660391112583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047143.P6374115660391112583

/-!
# A047144: T(n,n-2), array T as in A047140.

The programs for A047144, there is no canonical definition to state claims against.
-/

/-! ## A047144.P16321238355741721000

`Δ[A047143(n+1)]-A047146(n)`
-/

namespace A047144.P16321238355741721000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047146 n

end

end A047144.P16321238355741721000

/-! ## A047144.P17927041991737848401

`A047143(n+2)-A047142(n+1)`
-/

namespace A047144.P17927041991737848401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047143 (n + 2) - A047142 (n + 1)

end

end A047144.P17927041991737848401

/-! ## A047144.P18014835167794162844

`A047143(n+2)-(A047146(n)+A047143(n+1))`
-/

namespace A047144.P18014835167794162844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047143 (n + 2) - (A047146 n + A047143 (n + 1))

end

end A047144.P18014835167794162844

/-! ## A047144.P1591478755945285274

`A047140((n+1)²+(n+2)²)`
-/

namespace A047144.P1591478755945285274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047144.P1591478755945285274

/-! ## A047144.P10575993969011967802

`record[A047140(A092530(n)+1)]`
-/

namespace A047144.P10575993969011967802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A092530 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047144.P10575993969011967802

/-! ## A047144.P8470640358955703944

`record[A047140(A266287(n)-n)]`
-/

namespace A047144.P8470640358955703944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A266287 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047144.P8470640358955703944

/-! ## A047144.P11871734590493799196

`record[A047140(∑[A014682(n)]-n)]`
-/

namespace A047144.P11871734590493799196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047144.P11871734590493799196

/-! ## A047144.P3488318188162401875

`gcd(A000038(n), A047140(A001844(n+1)))`
-/

namespace A047144.P3488318188162401875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047140 (A001844 (n + 1)).toNat)

end

end A047144.P3488318188162401875

/-! ## A047144.P5237416213496926288

`A047140(A001844(n+1))+A000038(n+1)`
-/

namespace A047144.P5237416213496926288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A001844 (n + 1)).toNat + A000038 (n + 1)

end

end A047144.P5237416213496926288

/-! ## A047144.P13137265668245430918

`record[A047140(A182456(n)+1)]`
-/

namespace A047144.P13137265668245430918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A182456 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047144.P13137265668245430918

/-!
# A047145: T(n,n-3), array T as in A047140.

The programs for A047145, there is no canonical definition to state claims against.
-/

/-! ## A047145.P4958746699168327399

`A047144(n+3)-A047143(n+2)`
-/

namespace A047145.P4958746699168327399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047144 (n + 3) - A047143 (n + 2)

end

end A047145.P4958746699168327399

/-! ## A047145.P2230706500075273571

`A047144(n+3)-(A047144(n+2)+A047142(n+1))`
-/

namespace A047145.P2230706500075273571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047144 (n + 3) - (A047144 (n + 2) + A047142 (n + 1))

end

end A047145.P2230706500075273571

/-! ## A047145.P14655299780331290976

`A047140(A058331(n+2))`
-/

namespace A047145.P14655299780331290976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A058331 (n + 2)).toNat

end

end A047145.P14655299780331290976

/-! ## A047145.P10593998136208649838

`A047140(A161532(n)+8)`
-/

namespace A047145.P10593998136208649838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A161532 n + 8).toNat

end

end A047145.P10593998136208649838

/-! ## A047145.P3857519012357155902

`A047140(A005408((n+2)²))`
-/

namespace A047145.P3857519012357155902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A005408 ((n + 2) ^ 2)).toNat

end

end A047145.P3857519012357155902

/-! ## A047145.P16846930565221834649

`record[A047140(A266287(n)+1)]`
-/

namespace A047145.P16846930565221834649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A266287 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047145.P16846930565221834649

/-! ## A047145.P17344000339157272885

`A047140(A182456(2*n)-n)`
-/

namespace A047145.P17344000339157272885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A182456 (2 * n) - (n : ℤ)).toNat

end

end A047145.P17344000339157272885

/-! ## A047145.P9244464873201619177

`record[A047140(A058331(A008624(n)))]`
-/

namespace A047145.P9244464873201619177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A058331 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047145.P9244464873201619177

/-! ## A047145.P1905329565760008557

`record[A047140(A005408(A073254(n)))]`
-/

namespace A047145.P1905329565760008557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A005408 (A073254 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047145.P1905329565760008557

/-!
# A047146: T(n,n+1), array T as in A047140.

The programs for A047146, there is no canonical definition to state claims against.
-/

/-! ## A047146.P5235091019195220081

`A047142(n+1)-A047143(n+1)`
-/

namespace A047146.P5235091019195220081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047142 (n + 1) - A047143 (n + 1)

end

end A047146.P5235091019195220081

/-! ## A047146.P4919428987071179197

`Δ[A047143(n+1)]-A047144(n+2)`
-/

namespace A047146.P4919428987071179197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047144 (n + 2)

end

end A047146.P4919428987071179197

/-! ## A047146.P205531312801983244

`A047143(n+2)-(A047144(n+2)+A047143(n+1))`
-/

namespace A047146.P205531312801983244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047143 (n + 2) - (A047144 (n + 2) + A047143 (n + 1))

end

end A047146.P205531312801983244

/-! ## A047146.P11017192684363759497

`A047140(2*n+∑[4*n]+1)`
-/

namespace A047146.P11017192684363759497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A047146.P11017192684363759497

/-! ## A047146.P6647517065530749499

`A047140(A056220(n+1))%(5^(n+1))`
-/

namespace A047146.P6647517065530749499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047140 (A056220 (n + 1)).toNat) (5 ^ (n + 1) : ℤ)

end

end A047146.P6647517065530749499

/-!
# A047147: T(n,n+2), array T as in A047140.

The programs for A047147, there is no canonical definition to state claims against.
-/

/-! ## A047147.P1142722921870735428

`A047140(A132209(n+1))`
-/

namespace A047147.P1142722921870735428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A132209 (n + 1)).toNat

end

end A047147.P1142722921870735428

/-! ## A047147.P16137065771328460561

`A047140(A142463(n+1))`
-/

namespace A047147.P16137065771328460561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A142463 (n + 1)).toNat

end

end A047147.P16137065771328460561

/-! ## A047147.P13445040642200043563

`A047140(A059993(n)+2)`
-/

namespace A047147.P13445040642200043563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A059993 n + 2).toNat

end

end A047147.P13445040642200043563

/-! ## A047147.P15122861828537369181

`A047140(or(2, A059993(n)))`
-/

namespace A047147.P15122861828537369181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (Int.lor 2 (A059993 n)).toNat

end

end A047147.P15122861828537369181

/-! ## A047147.P4036345088306865975

`A047140(A001844(n+1)-2)`
-/

namespace A047147.P4036345088306865975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A001844 (n + 1) - 2).toNat

end

end A047147.P4036345088306865975

/-! ## A047147.P17665451823032021546

`A047140(A099776(n+1)-2)`
-/

namespace A047147.P17665451823032021546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A099776 (n + 1) - 2).toNat

end

end A047147.P17665451823032021546

/-! ## A047147.P9925061342867745324

`record[A047140(∑[A014682(n)]+n)]`
-/

namespace A047147.P9925061342867745324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047147.P9925061342867745324

/-! ## A047147.P2924303934221713137

`A047140(A182456(2*n+1)-1)`
-/

namespace A047147.P2924303934221713137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A182456 (2 * n + 1) - 1).toNat

end

end A047147.P2924303934221713137

/-! ## A047147.P7796227928344155443

`A047140(A055998(2*n+1)-n)`
-/

namespace A047147.P7796227928344155443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A055998 (2 * n + 1) - (n : ℤ)).toNat

end

end A047147.P7796227928344155443

/-!
# A047148: T(n,n+3), array T as in A047140.

The programs for A047148, there is no canonical definition to state claims against.
-/

/-! ## A047148.P4473620945484799982

`A047140(∑[a(n-1)+4])` with `a(0)=6`
-/

namespace A047148.P4473620945484799982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047148.P4473620945484799982

/-! ## A047148.P12459083659536926707

`A047140(2*(n+1)*(n+3))`
-/

namespace A047148.P12459083659536926707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (2 * ((n + 1) * (n + 3)))

end

end A047148.P12459083659536926707

/-! ## A047148.P14634440290146621914

`record[A047140(∑[A014682(n)+2])]`
-/

namespace A047148.P14634440290146621914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047148.P14634440290146621914

/-!
# A047149: T(2n,n), array T as in A047140.

The programs for A047149, there is no canonical definition to state claims against.
-/

/-! ## A047149.P16862979641899349283

`A047140(A062728(n))`
-/

namespace A047149.P16862979641899349283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A062728 n).toNat

end

end A047149.P16862979641899349283

/-! ## A047149.P5996737271565241069

`record[A047140(A195160(n))]`
-/

namespace A047149.P5996737271565241069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A195160 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047149.P5996737271565241069

/-! ## A047149.P16013685763055822216

`A047140(A195160(2*n))`
-/

namespace A047149.P16013685763055822216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A195160 (2 * n)).toNat

end

end A047149.P16013685763055822216

/-! ## A047149.P7968362338483621641

`A047140(A027468(n)-n)`
-/

namespace A047149.P7968362338483621641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A027468 n - (n : ℤ)).toNat

end

end A047149.P7968362338483621641

/-! ## A047149.P1368248776435167087

`A047140(A125662(A055998(n)))`
-/

namespace A047149.P1368248776435167087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 (A125662 (A055998 n).toNat).toNat

end

end A047149.P1368248776435167087

/-!
# A047150: Array read by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no up-step crosses the line y=5x/3. (Thus a path crosses the line only at lattice points and on right-steps.).

The programs for A047150, there is no canonical definition to state claims against.
-/

/-! ## A047150.P17154820557644743950

`A257564(A209414(n+1))`
-/

namespace A047150.P17154820557644743950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A209414 (n + 1)).toNat

end

end A047150.P17154820557644743950

/-! ## A047150.P10430290306559004202

`A257564(A101164(n)+A099608(n))`
-/

namespace A047150.P10430290306559004202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A101164 n + A099608 n).toNat

end

end A047150.P10430290306559004202

/-! ## A047150.P12865667130855495067

`lcm(A047140(n), A065648(A321312(n)))`
-/

namespace A047150.P12865667130855495067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047140 n) (A065648 (A321312 n).toNat)

end

end A047150.P12865667130855495067

/-! ## A047150.P13803544866950831858

`A007318(n)-A262682(A262705(n+1))`
-/

namespace A047150.P13803544866950831858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A262682 (A262705 (n + 1)).toNat

end

end A047150.P13803544866950831858

/-! ## A047150.P18057116986544176541

`A381524(A123352(n))`
-/

namespace A047150.P18057116986544176541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A123352 n).toNat

end

end A047150.P18057116986544176541

/-!
# A047151: Sum{T(i,n-i): i=0,1,...,n}, array T as in A047150.

The programs for A047151, there is no canonical definition to state claims against.
-/

/-! ## A047151.P9019523352464042493

`∩[A061012(n+1), A173643(n+1)]`
-/

namespace A047151.P9019523352464042493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047151.P9019523352464042493

/-! ## A047151.P5105882605078039278

`record[A298210(A028326(n))]`
-/

namespace A047151.P5105882605078039278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298210 (A028326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047151.P5105882605078039278

/-! ## A047151.P17247099892185795792

`A214962(A005417(n))`
-/

namespace A047151.P17247099892185795792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (A005417 n).toNat

end

end A047151.P17247099892185795792

/-! ## A047151.P15843358570613649219

`A214962(A080742(n))`
-/

namespace A047151.P15843358570613649219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214962 (A080742 n).toNat

end

end A047151.P15843358570613649219

/-! ## A047151.P8598909584801276637

`A371286(A017987(n))`
-/

namespace A047151.P8598909584801276637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A017987 n).toNat

end

end A047151.P8598909584801276637

/-!
# A047152: T(n,n), array T as in A047150.

The programs for A047152, there is no canonical definition to state claims against.
-/

/-! ## A047152.P819629718650929836

`A047150(∑[4*n])`
-/

namespace A047152.P819629718650929836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047152.P819629718650929836

/-! ## A047152.P12487513712603892492

`record[A047150(∑[A071045(n)])]`
-/

namespace A047152.P12487513712603892492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P12487513712603892492

/-! ## A047152.P321545516098953828

`record[gcd(A008482(n), A047150(n))]`
-/

namespace A047152.P321545516098953828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A047150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P321545516098953828

/-! ## A047152.P14365398925936856961

`record[A047150(gcd(n, A114327(n)))]`
-/

namespace A047152.P14365398925936856961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P14365398925936856961

/-! ## A047152.P113968198779561258

`record[A047150(∑[A014682(n)+1])]`
-/

namespace A047152.P113968198779561258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P113968198779561258

/-! ## A047152.P15757986224393160766

`record[A047150((n+1)*A004526(n))]`
-/

namespace A047152.P15757986224393160766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P15757986224393160766

/-! ## A047152.P2913622320599534006

`record[A047150(2*n)-A008482(2*n)²]`
-/

namespace A047152.P2913622320599534006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * n) - A008482 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047152.P2913622320599534006

/-! ## A047152.P10437094786301954509

`A047150(2*lcm(n, n+1))+A000038(n+1)`
-/

namespace A047152.P10437094786301954509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * Nat.lcm n (n + 1)) + A000038 (n + 1)

end

end A047152.P10437094786301954509

/-! ## A047152.P17161667597526894427

`A047150((n+1)*2*n)%A060460(n+1)`
-/

namespace A047152.P17161667597526894427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047150 ((n + 1) * (2 * n))) (A060460 (n + 1))

end

end A047152.P17161667597526894427

/-! ## A047152.P4510625519837841100

`A047150((n+1)*2*n)+A004526(n²%(n+1))`
-/

namespace A047152.P4510625519837841100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 ((n + 1) * (2 * n)) + A004526 (n ^ 2 % (n + 1))

end

end A047152.P4510625519837841100

/-!
# A047153: T(n,n-1), array T as in A047150.

The programs for A047153, there is no canonical definition to state claims against.
-/

/-! ## A047153.P16063819726922685366

`A047152(n+1)-A047156(n)`
-/

namespace A047153.P16063819726922685366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047152 (n + 1) - A047156 n

end

end A047153.P16063819726922685366

/-! ## A047153.P8831689112771523696

`abs(Δ[A047156(n)]-A047157(n))`
-/

namespace A047153.P8831689112771523696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A047157 n|

end

end A047153.P8831689112771523696

/-! ## A047153.P12104316109939541586

`record[A047152(A065648(n))]-A047156(n)`
-/

namespace A047153.P12104316109939541586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047152 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047156 n

end

end A047153.P12104316109939541586

/-! ## A047153.P12030467577314208781

`A047150(2*(n+1)²)`
-/

namespace A047153.P12030467577314208781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * (n + 1) ^ 2)

end

end A047153.P12030467577314208781

/-! ## A047153.P7354908388840018735

`record[A047150(A266287(n))]`
-/

namespace A047153.P7354908388840018735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A266287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P7354908388840018735

/-! ## A047153.P6307694984034734252

`record[A047150(∑[A014682(n)])]`
-/

namespace A047153.P6307694984034734252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P6307694984034734252

/-! ## A047153.P7634147763675537808

`record[A047150(n*A004526(n))]`
-/

namespace A047153.P7634147763675537808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 ((n : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P7634147763675537808

/-! ## A047153.P18279908082129308688

`record[A047150(n*A025480(n))]`
-/

namespace A047153.P18279908082129308688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 ((n : ℤ) * A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P18279908082129308688

/-! ## A047153.P547410895563058700

`record[A047150(2*A114327(n)²)]`
-/

namespace A047153.P547410895563058700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * A114327 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P547410895563058700

/-! ## A047153.P1104891693791953807

`record[A047150(∑[A071045(n)+1])]`
-/

namespace A047153.P1104891693791953807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047153.P1104891693791953807

/-!
# A047154: T(n,n-2), array T as in A047150.

The programs for A047154, there is no canonical definition to state claims against.
-/

/-! ## A047154.P9368652134955333736

`Δ[A047153(n+1)]-A047156(n)`
-/

namespace A047154.P9368652134955333736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047156 n

end

end A047154.P9368652134955333736

/-! ## A047154.P250685005494891047

`A047153(n+2)-A047152(n+1)`
-/

namespace A047154.P250685005494891047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047153 (n + 2) - A047152 (n + 1)

end

end A047154.P250685005494891047

/-! ## A047154.P16328612259397437579

`Δ[A047152(n+1)]-A047156(n+1)`
-/

namespace A047154.P16328612259397437579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047156 (n + 1)

end

end A047154.P16328612259397437579

/-! ## A047154.P16620602358491576970

`A047150((n+1)²+(n+2)²)`
-/

namespace A047154.P16620602358491576970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A047154.P16620602358491576970

/-! ## A047154.P4337405663678123729

`record[A047150(A156679(n+1))]`
-/

namespace A047154.P4337405663678123729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A156679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047154.P4337405663678123729

/-! ## A047154.P6007724736933676493

`record[A047150(A266287(n)-n)]`
-/

namespace A047154.P6007724736933676493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A266287 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047154.P6007724736933676493

/-! ## A047154.P10877769583081348804

`record[A047150(∑[A014682(n)]-n)]`
-/

namespace A047154.P10877769583081348804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047154.P10877769583081348804

/-! ## A047154.P3725353102592721100

`record[gcd(A008482(2*n), A047150(2*n+1))]`
-/

namespace A047154.P3725353102592721100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 (2 * n)) (A047150 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047154.P3725353102592721100

/-!
# A047155: T(n,n-3), array T as in A047150.

The programs for A047155, there is no canonical definition to state claims against.
-/

/-! ## A047155.P17101416150126011473

`A047154(n+3)-A047153(n+2)`
-/

namespace A047155.P17101416150126011473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047154 (n + 3) - A047153 (n + 2)

end

end A047155.P17101416150126011473

/-! ## A047155.P8020359830573200566

`Δ[A047154(n+2)]-A047152(n+1)`
-/

namespace A047155.P8020359830573200566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047152 (n + 1)

end

end A047155.P8020359830573200566

/-! ## A047155.P9417793566956404221

`A047154(n+3)-(A047154(n+2)+A047152(n+1))`
-/

namespace A047155.P9417793566956404221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047154 (n + 3) - (A047154 (n + 2) + A047152 (n + 1))

end

end A047155.P9417793566956404221

/-! ## A047155.P1681410691530745125

`A047150(A005408((n+2)²))`
-/

namespace A047155.P1681410691530745125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A005408 ((n + 2) ^ 2)).toNat

end

end A047155.P1681410691530745125

/-! ## A047155.P4722300087386925851

`record[A047150(A266287(n)+1)]`
-/

namespace A047155.P4722300087386925851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A266287 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047155.P4722300087386925851

/-! ## A047155.P16217253912939295509

`A047150(A152811(n+1)+7)`
-/

namespace A047155.P16217253912939295509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A152811 (n + 1) + 7).toNat

end

end A047155.P16217253912939295509

/-!
# A047156: T(n,n+1), array T as in A047150.

The programs for A047156, there is no canonical definition to state claims against.
-/

/-! ## A047156.P624452431986678787

`A047152(n+1)-A047153(n+1)`
-/

namespace A047156.P624452431986678787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047152 (n + 1) - A047153 (n + 1)

end

end A047156.P624452431986678787

/-! ## A047156.P16736989416312313642

`Δ[A047153(n+1)]-A047154(n+2)`
-/

namespace A047156.P16736989416312313642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047154 (n + 2)

end

end A047156.P16736989416312313642

/-! ## A047156.P4404149849021958795

`A047153(n+2)-(A047154(n+2)+A047153(n+1))`
-/

namespace A047156.P4404149849021958795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047153 (n + 2) - (A047154 (n + 2) + A047153 (n + 1))

end

end A047156.P4404149849021958795

/-! ## A047156.P9771547592235868360

`A047150(2*(n+1)²-1)`
-/

namespace A047156.P9771547592235868360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * (n + 1) ^ 2 - 1)

end

end A047156.P9771547592235868360

/-!
# A047157: T(n,n+2), array T as in A047150.

The programs for A047157, there is no canonical definition to state claims against.
-/

/-! ## A047157.P3526891486992084326

`abs(A047153(n+1)-Δ[A047156(n)])`
-/

namespace A047157.P3526891486992084326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047153 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A047157.P3526891486992084326

/-! ## A047157.P5323269540941483280

`A000038(n)+Δ[A047156(n)]-A047153(n+1)`
-/

namespace A047157.P5323269540941483280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n - A047153 (n + 1))

end

end A047157.P5323269540941483280

/-! ## A047157.P13648878325545626442

`A047150(∑[4*(n+1)]-1)`
-/

namespace A047157.P13648878325545626442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A047157.P13648878325545626442

/-! ## A047157.P1130201833549519475

`record[A047150(∑[A014682(n)]+n)]`
-/

namespace A047157.P1130201833549519475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047157.P1130201833549519475

/-! ## A047157.P4850504676020892059

`record[A047150(gcd(n, A114327(n+1)))]`
-/

namespace A047157.P4850504676020892059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (Int.gcd (n : ℤ) (A114327 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047157.P4850504676020892059

/-! ## A047157.P5493943759460627609

`A007318(C(2, n))*A047150(A142463(n+1))`
-/

namespace A047157.P5493943759460627609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A047150 (A142463 (n + 1)).toNat

end

end A047157.P5493943759460627609

/-! ## A047157.P18344663468504003732

`A047150(A142463(n+1))+A007814(2*n+1)`
-/

namespace A047157.P18344663468504003732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A142463 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A047157.P18344663468504003732

/-! ## A047157.P17321583490997437896

`A047150(A142463(n+1))%(A078008(n)+4^n)`
-/

namespace A047157.P17321583490997437896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047150 (A142463 (n + 1)).toNat) (A078008 n + (4 ^ n : ℤ))

end

end A047157.P17321583490997437896

/-! ## A047157.P10233540282826394799

`A001222(A081256(n+2))*A047150(A142463(n+1))`
-/

namespace A047157.P10233540282826394799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081256 (n + 2)).toNat * A047150 (A142463 (n + 1)).toNat

end

end A047157.P10233540282826394799

/-! ## A047157.P17212188158976170549

`A002217(A223036(n+1))*A047150(A142463(n+1))`
-/

namespace A047157.P17212188158976170549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A223036 (n + 1)).toNat * A047150 (A142463 (n + 1)).toNat

end

end A047157.P17212188158976170549

/-!
# A047158: T(n,n+3), array T as in A047150.

The programs for A047158, there is no canonical definition to state claims against.
-/

/-! ## A047158.P9317875336609821852

`abs(A047156(n+1)-A047157(n+1))`
-/

namespace A047158.P9317875336609821852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047156 (n + 1) - A047157 (n + 1)|

end

end A047158.P9317875336609821852

/-! ## A047158.P2606647436200815976

`A047150(2*(n+1)*(n+3))`
-/

namespace A047158.P2606647436200815976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (2 * ((n + 1) * (n + 3)))

end

end A047158.P2606647436200815976

/-! ## A047158.P13703931847426700107

`record[A047150(∑[A014682(n)+2])]`
-/

namespace A047158.P13703931847426700107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047158.P13703931847426700107

/-! ## A047158.P16101559464587541396

`record[A047150(2*n)/A132885(n)]`
-/

namespace A047158.P16101559464587541396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047150 (2 * n) : ℚ) / (A132885 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047158.P16101559464587541396

/-!
# A047159: T(2n,n), array T as in A047150.

The programs for A047159, there is no canonical definition to state claims against.
-/

/-! ## A047159.P3825560478260630818

`A047150(A062728(n))`
-/

namespace A047159.P3825560478260630818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A062728 n).toNat

end

end A047159.P3825560478260630818

/-! ## A047159.P3388664116373654992

`record[A047150(A195160(n))]`
-/

namespace A047159.P3388664116373654992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A195160 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047159.P3388664116373654992

/-! ## A047159.P16219324780870097027

`A047150(A195160(2*n))`
-/

namespace A047159.P16219324780870097027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A195160 (2 * n)).toNat

end

end A047159.P16219324780870097027

/-! ## A047159.P7548667689164943725

`A047150(A062725(n)+n)`
-/

namespace A047159.P7548667689164943725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A062725 n + (n : ℤ)).toNat

end

end A047159.P7548667689164943725

/-! ## A047159.P10781798439858702297

`A047150(A027468(n)-n)`
-/

namespace A047159.P10781798439858702297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047150 (A027468 n - (n : ℤ)).toNat

end

end A047159.P10781798439858702297

/-!
# A047160: For n >= 2, a(n) = smallest number m >= 0 such that n-m and n+m are both primes, or -1 if no such m exists.

The programs for A047160, there is no canonical definition to state claims against.
-/

/-! ## A047160.P8138135903030038861

`n+2-A112823(n+2)`
-/

namespace A047160.P8138135903030038861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A112823 (n + 2)

end

end A047160.P8138135903030038861

/-! ## A047160.P5822078960851106251

`A066285(n+2)/2`
-/

namespace A047160.P5822078960851106251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (n + 2) : ℚ) / 2

end

end A047160.P5822078960851106251

/-! ## A047160.P1734862661726029223

`A234345(n+2)-(n+2)`
-/

namespace A047160.P1734862661726029223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) - (n + 2 : ℤ)

end

end A047160.P1734862661726029223

/-! ## A047160.P15551324095005483233

`A001281(A066285(n+2))`
-/

namespace A047160.P15551324095005483233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A066285 (n + 2)).toNat

end

end A047160.P15551324095005483233

/-! ## A047160.P16842585400369211551

`A004526(A066285(n+2)+1)`
-/

namespace A047160.P16842585400369211551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A066285 (n + 2) + 1).toNat

end

end A047160.P16842585400369211551

/-! ## A047160.P4106325466779512697

`A002265(2*A066285(n+2))`
-/

namespace A047160.P4106325466779512697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A066285 (n + 2)).toNat

end

end A047160.P4106325466779512697

/-! ## A047160.P2058227884749845721

`A234345(n+2)%A057544(n)`
-/

namespace A047160.P2058227884749845721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234345 (n + 2)) (A057544 n)

end

end A047160.P2058227884749845721

/-! ## A047160.P10138946950989960925

`A047949(n+2)-A112824(n+2)`
-/

namespace A047160.P10138946950989960925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2) - A112824 (n + 2)

end

end A047160.P10138946950989960925

/-! ## A047160.P10537560540868261008

`A020725(n+1)%A112823(n+2)`
-/

namespace A047160.P10537560540868261008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1)) (A112823 (n + 2))

end

end A047160.P10537560540868261008

/-! ## A047160.P16377314416375268019

`A114637(n+1)%A112823(n+2)`
-/

namespace A047160.P16377314416375268019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114637 (n + 1)) (A112823 (n + 2))

end

end A047160.P16377314416375268019

/-! ## A047160.P16320401490232440057

`A325142(n+2)`
-/

namespace A047160.P16320401490232440057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2)

end

end A047160.P16320401490232440057

/-! ## A047160.P18129871603149203483

`n+2-A331634(2*(n+2))`
-/

namespace A047160.P18129871603149203483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A331634 (2 * (n + 2))

end

end A047160.P18129871603149203483

/-! ## A047160.P1266426234505368812

`2-A331634(Δ[A028387(n)])+n`
-/

namespace A047160.P1266426234505368812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A331634 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A047160.P1266426234505368812

/-! ## A047160.P11450900538045385395

`A164023(2*(n+3))-(n+2)`
-/

namespace A047160.P11450900538045385395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (2 * (n + 3)) - (n + 2 : ℤ)

end

end A047160.P11450900538045385395

/-! ## A047160.P14044975696560591208

`(A164023(n+n+6)-1)%(n+1)`
-/

namespace A047160.P14044975696560591208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164023 (n + n + 6) - 1) (n + 1 : ℤ)

end

end A047160.P14044975696560591208

/-! ## A047160.P8993602635941541164

`A182138(∑[A002375(n+2)]+2)`
-/

namespace A047160.P8993602635941541164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182138 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A047160.P8993602635941541164

/-! ## A047160.P6848888609503324216

`A006530(A102084(n+2))-(n+2)`
-/

namespace A047160.P6848888609503324216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102084 (n + 2)).toNat - (n + 2 : ℤ)

end

end A047160.P6848888609503324216

/-! ## A047160.P9452726662853473444

`A049087(A102084(n+2))/2`
-/

namespace A047160.P9452726662853473444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049087 (A102084 (n + 2)).toNat : ℚ) / 2

end

end A047160.P9452726662853473444

/-! ## A047160.P10195251941302425619

`A371036(n+1)%A234345(n+2)`
-/

namespace A047160.P10195251941302425619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371036 (n + 1)) (A234345 (n + 2))

end

end A047160.P10195251941302425619

/-! ## A047160.P10958713842135470942

`A306257(A102084(n+2))`
-/

namespace A047160.P10958713842135470942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306257 (A102084 (n + 2)).toNat

end

end A047160.P10958713842135470942

/-!
# A047161: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= n/2.

The programs for A047161, there is no canonical definition to state claims against.
-/

/-! ## A047161.P12442891607216000624

`A095861(A004643(n)-A000389(n))`
-/

namespace A047161.P12442891607216000624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004643 n - A000389 n).toNat

end

end A047161.P12442891607216000624

/-! ## A047161.P3479907540703401066

`A095861(A004643(n)-A046746(n))`
-/

namespace A047161.P3479907540703401066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004643 n - A046746 n).toNat

end

end A047161.P3479907540703401066

/-! ## A047161.P13576994587081228829

`A095861(A004643(n)-A068627(n))`
-/

namespace A047161.P13576994587081228829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004643 n - A068627 n).toNat

end

end A047161.P13576994587081228829

/-! ## A047161.P16929541594953520276

`A095861(A004643(n)-A139250(n))`
-/

namespace A047161.P16929541594953520276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004643 n - A139250 n).toNat

end

end A047161.P16929541594953520276

/-! ## A047161.P11595653002644800651

`A307707(A004643(n)-A001891(n))`
-/

namespace A047161.P11595653002644800651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A004643 n - A001891 n).toNat

end

end A047161.P11595653002644800651

/-!
# A047162: Number of nonempty subsets of {1,2,...,n} in which exactly 2/3 of the elements are <= n/2.

The programs for A047162, there is no canonical definition to state claims against.
-/

/-! ## A047162.P6150619082495132614

`∑[A092131(3*n+1)]%A320921(n)`
-/

namespace A047162.P6150619082495132614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A320921 n)

end

end A047162.P6150619082495132614

/-! ## A047162.P5336959750752735282

`A275890(A326078(n))-A158416(n)`
-/

namespace A047162.P5336959750752735282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275890 (A326078 n).toNat - A158416 n

end

end A047162.P5336959750752735282

/-! ## A047162.P13020092195704864665

`A248333(A166012(n+1)-A126120(n))`
-/

namespace A047162.P13020092195704864665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A166012 (n + 1) - A126120 n).toNat

end

end A047162.P13020092195704864665

/-! ## A047162.P7379643182039573748

`A080791(A339586(n+8))*A143592(n+1)`
-/

namespace A047162.P7379643182039573748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A339586 (n + 8)).toNat * A143592 (n + 1)

end

end A047162.P7379643182039573748

/-!
# A047163: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= n/2.

The programs for A047163, there is no canonical definition to state claims against.
-/

/-! ## A047163.P10516440909012438073

`A333319(A062399(n+1))`
-/

namespace A047163.P10516440909012438073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (A062399 (n + 1)).toNat

end

end A047163.P10516440909012438073

/-! ## A047163.P12814025678424723740

`A333319(A087051(n)+1)`
-/

namespace A047163.P12814025678424723740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (A087051 n + 1).toNat

end

end A047163.P12814025678424723740

/-! ## A047163.P12064505666041767530

`A097449(A333319(n+1))`
-/

namespace A047163.P12064505666041767530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A333319 (n + 1)).toNat

end

end A047163.P12064505666041767530

/-! ## A047163.P15206127762617913761

`A333319(A351870(n+1))`
-/

namespace A047163.P15206127762617913761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (A351870 (n + 1)).toNat

end

end A047163.P15206127762617913761

/-! ## A047163.P15061226306677211749

`A333319(A227549(n+1)+1)`
-/

namespace A047163.P15061226306677211749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (A227549 (n + 1) + 1).toNat

end

end A047163.P15061226306677211749

/-!
# A047164: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= n/2.

The programs for A047164, there is no canonical definition to state claims against.
-/

/-! ## A047164.P14927536584279750468

`A330299(∑[A053501(n)])`
-/

namespace A047164.P14927536584279750468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047164.P14927536584279750468

/-! ## A047164.P6881098303885399151

`A330299(A153583(∑[n]))`
-/

namespace A047164.P6881098303885399151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (A153583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A047164.P6881098303885399151

/-! ## A047164.P17275655812626958546

`A330299(A062399(n)+1)`
-/

namespace A047164.P17275655812626958546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (A062399 n + 1).toNat

end

end A047164.P17275655812626958546

/-! ## A047164.P12350607432083454344

`A097449(A330299(n+1))`
-/

namespace A047164.P12350607432083454344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A330299 (n + 1)).toNat

end

end A047164.P12350607432083454344

/-! ## A047164.P18196785629227749528

`A330299(A351870(n)+1)`
-/

namespace A047164.P18196785629227749528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (A351870 n + 1).toNat

end

end A047164.P18196785629227749528

/-!
# A047165: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= n/2.

The programs for A047165, there is no canonical definition to state claims against.
-/

/-! ## A047165.P14220875204948336301

`A333320(A077168(n))`
-/

namespace A047165.P14220875204948336301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (A077168 n).toNat

end

end A047165.P14220875204948336301

/-! ## A047165.P9303499850803265959

`A333320(A015995(2^n))`
-/

namespace A047165.P9303499850803265959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (A015995 (2 ^ n)).toNat

end

end A047165.P9303499850803265959

/-! ## A047165.P17400196172607191937

`A333320(log2(A004277(2^n)))`
-/

namespace A047165.P17400196172607191937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (SequenceMachineLib.roundAway (Real.logb 2 (A004277 (2 ^ n) : ℝ))).toNat

end

end A047165.P17400196172607191937

/-! ## A047165.P10176729846562038200

`A333320(record[A109151(n)+n])`
-/

namespace A047165.P10176729846562038200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047165.P10176729846562038200

/-! ## A047165.P9919765658167778825

`A333320(n+1)+A000007(A000079(n))`
-/

namespace A047165.P9919765658167778825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (n + 1) + A000007 (A000079 n).toNat

end

end A047165.P9919765658167778825

/-!
# A047166: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= n/2.

The programs for A047166, there is no canonical definition to state claims against.
-/

/-! ## A047166.P11867573499989379074

`A028725(A087051(n)+2)`
-/

namespace A047166.P11867573499989379074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028725 (A087051 n + 2).toNat

end

end A047166.P11867573499989379074

/-! ## A047166.P12458178725041816383

`Δ[A331574(∑[A053501(n)])]`
-/

namespace A047166.P12458178725041816383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047166.P12458178725041816383

/-! ## A047166.P11121085115951796910

`Δ[A331574(A053501(n)+n)]`
-/

namespace A047166.P11121085115951796910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 (A053501 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047166.P11121085115951796910

/-!
# A047167: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= n/2.

The programs for A047167, there is no canonical definition to state claims against.
-/

/-! ## A047167.P5421785150578969547

`A330300(∑[A053501(n)])`
-/

namespace A047167.P5421785150578969547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047167.P5421785150578969547

/-! ## A047167.P16545186323231406669

`A330300(A062399(n)+1)`
-/

namespace A047167.P16545186323231406669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (A062399 n + 1).toNat

end

end A047167.P16545186323231406669

/-! ## A047167.P6029561523116763941

`A330300(A351870(n)+1)`
-/

namespace A047167.P6029561523116763941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (A351870 n + 1).toNat

end

end A047167.P6029561523116763941

/-! ## A047167.P8901163144730554182

`A330300(A053501(n)+n)`
-/

namespace A047167.P8901163144730554182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (A053501 n + (n : ℤ)).toNat

end

end A047167.P8901163144730554182

/-!
# A047168: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= n/2.

The programs for A047168, there is no canonical definition to state claims against.
-/

/-! ## A047168.P1666448948727492567

`A333321(A187829(n+1))`
-/

namespace A047168.P1666448948727492567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (A187829 (n + 1)).toNat

end

end A047168.P1666448948727492567

/-! ## A047168.P9542548867073598577

`A333321(A072078(2^n))`
-/

namespace A047168.P9542548867073598577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (A072078 (2 ^ n)).toNat

end

end A047168.P9542548867073598577

/-! ## A047168.P15580131479478438567

`A333321(∑[∑[A109151(n)]])`
-/

namespace A047168.P15580131479478438567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047168.P15580131479478438567

/-! ## A047168.P2623672104925129595

`A171181(2*A333321(n+1))`
-/

namespace A047168.P2623672104925129595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (2 * A333321 (n + 1)).toNat

end

end A047168.P2623672104925129595

/-! ## A047168.P2259903236712493502

`A333321(A109151(n)+1+n)`
-/

namespace A047168.P2259903236712493502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (A109151 n + 1 + (n : ℤ)).toNat

end

end A047168.P2259903236712493502

/-!
# A047169: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= n/2.

The programs for A047169, there is no canonical definition to state claims against.
-/

/-! ## A047169.P4218144848229546164

`A002266(A008619(n)*A333321(n))`
-/

namespace A047169.P4218144848229546164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008619 n * A333321 n).toNat

end

end A047169.P4218144848229546164

/-! ## A047169.P457156800594117179

`A000389(A008619(n))*A001222(A056451(n))`
-/

namespace A047169.P457156800594117179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A008619 n).toNat * A001222 (A056451 n).toNat

end

end A047169.P457156800594117179

/-! ## A047169.P10605217369502593477

`A000389(A008619(n))*A004526(A187829(n+1))`
-/

namespace A047169.P10605217369502593477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A008619 n).toNat * A004526 (A187829 (n + 1)).toNat

end

end A047169.P10605217369502593477

/-! ## A047169.P10253189466792401398

`A000389(A187829(n+1)-A065033(n))*A065033(n)`
-/

namespace A047169.P10253189466792401398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A187829 (n + 1) - A065033 n).toNat * A065033 n

end

end A047169.P10253189466792401398

/-! ## A047169.P10985195438837096390

`A000389(A187829(n+1)-A110654(n))*A085268(n)`
-/

namespace A047169.P10985195438837096390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A187829 (n + 1) - A110654 n).toNat * A085268 (n + 32)

end

end A047169.P10985195438837096390

/-!
# A047170: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= n/2.

The programs for A047170, there is no canonical definition to state claims against.
-/

/-! ## A047170.P13993340659359380475

`A047169(n+2)-A333321(A187829(n+1))`
-/

namespace A047170.P13993340659359380475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047169 (n + 2) - A333321 (A187829 (n + 1)).toNat

end

end A047170.P13993340659359380475

/-! ## A047170.P17976454913258406747

`A000389(A065033(n))*A065033(A187829(n+1))`
-/

namespace A047170.P17976454913258406747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A065033 n).toNat * A065033 (A187829 (n + 1)).toNat

end

end A047170.P17976454913258406747

/-! ## A047170.P9535790342489256998

`A000389(A085268(n))*A085268(A187829(n+1))`
-/

namespace A047170.P9535790342489256998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A085268 (n + 32)).toNat * A085268 ((A187829 (n + 1)).toNat + 32)

end

end A047170.P9535790342489256998

/-! ## A047170.P6869054588394465027

`A000389(A110654(n))*A110654(A187829(n+1))`
-/

namespace A047170.P6869054588394465027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A110654 n).toNat * A110654 (A187829 (n + 1)).toNat

end

end A047170.P6869054588394465027

/-! ## A047170.P3206985168109436638

`A000389(A187829(n+1)-A008619(n))*A008619(n)`
-/

namespace A047170.P3206985168109436638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A187829 (n + 1) - A008619 n).toNat * A008619 n

end

end A047170.P3206985168109436638

/-!
# A047171: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-1)/2.

The programs for A047171, the canonical program `A047171.P3617621157085985974` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047171 has offset 0).

The definition of A047171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047171.P3617621157085985974

`A057428(n)+A037952(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047171

/-- `A057428(n)+A037952(n)` -/
def P3617621157085985974.Spec : Prop :=
  ∀ n, P3617621157085985974.a n = A047171 n

theorem P3617621157085985974.correct : P3617621157085985974.Spec := by
  intro n
  simp only [A047171]

end A047171

/-! ## A047171.P9900322074066477380

`A037952(n)-A057427(n)`
-/

namespace A047171.P9900322074066477380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - A057427 n

end

end A047171.P9900322074066477380

namespace A047171

/-- `A037952(n)-A057427(n)` -/
def P9900322074066477380.Spec : Prop :=
  ∀ n, P9900322074066477380.a n = A047171 n

theorem P9900322074066477380.correct : P9900322074066477380.Spec := by
  intro n
  simp only [A047171, Nat.add_sub_cancel, A047171.P9900322074066477380.a, A047171.P3617621157085985974.a, A037952, A037952.P12527518621144432041.f1, A037952.P12527518621144432041.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A191529, A191529.P15028808747650929508.f2, A191529.P15028808747650929508.f1, A191529.P15028808747650929508.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047171

/-! ## A047171.P5407445092204136364

`A001405(n)-A329696(n)`
-/

namespace A047171.P5407445092204136364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A329696 n

end

end A047171.P5407445092204136364

namespace A047171

/-- `A001405(n)-A329696(n)` -/
def P5407445092204136364.Spec : Prop :=
  ∀ n, P5407445092204136364.a n = A047171 n

end A047171

/-! ## A047171.P966101168074385276

`A037952(A000007(n)+n)-1`
-/

namespace A047171.P966101168074385276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A000007 n + (n : ℤ)).toNat - 1

end

end A047171.P966101168074385276

namespace A047171

/-- `A037952(A000007(n)+n)-1` -/
def P966101168074385276.Spec : Prop :=
  ∀ n, P966101168074385276.a n = A047171 n

end A047171

/-! ## A047171.P11829804009116139560

`A037952(n)-A060576(n+1)`
-/

namespace A047171.P11829804009116139560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - A060576 (n + 1)

end

end A047171.P11829804009116139560

namespace A047171

/-- `A037952(n)-A060576(n+1)` -/
def P11829804009116139560.Spec : Prop :=
  ∀ n, P11829804009116139560.a n = A047171 n

end A047171

/-! ## A047171.P10499336968032722

`A037952(n)-(1-A000007(n))`
-/

namespace A047171.P10499336968032722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - (1 - A000007 n)

end

end A047171.P10499336968032722

namespace A047171

/-- `A037952(n)-(1-A000007(n))` -/
def P10499336968032722.Spec : Prop :=
  ∀ n, P10499336968032722.a n = A047171 n

theorem P10499336968032722.correct : P10499336968032722.Spec := by
  intro n
  simp only [A047171, Nat.add_sub_cancel, A047171.P10499336968032722.a, A047171.P3617621157085985974.a, A000007, A000007.P6599383543502402472.a, A037952, A037952.P12527518621144432041.f1, A037952.P12527518621144432041.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A191529, A191529.P15028808747650929508.f2, A191529.P15028808747650929508.f1, A191529.P15028808747650929508.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A047171

/-! ## A047171.P9906553674664481189

`A037952(A004277(n)-n)-1`
-/

namespace A047171.P9906553674664481189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A004277 n - (n : ℤ)).toNat - 1

end

end A047171.P9906553674664481189

namespace A047171

/-- `A037952(A004277(n)-n)-1` -/
def P9906553674664481189.Spec : Prop :=
  ∀ n, P9906553674664481189.a n = A047171 n

end A047171

/-! ## A047171.P3991665114974885070

`A037952(n)-gcd(n, A131738(n))`
-/

namespace A047171.P3991665114974885070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - (Int.gcd (n : ℤ) (A131738 n) : ℤ)

end

end A047171.P3991665114974885070

namespace A047171

/-- `A037952(n)-gcd(n, A131738(n))` -/
def P3991665114974885070.Spec : Prop :=
  ∀ n, P3991665114974885070.a n = A047171 n

end A047171

/-! ## A047171.P5047074997939960268

`A037952(n)+2-A157532(n+1)`
-/

namespace A047171.P5047074997939960268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + (2 - A157532 (n + 1))

end

end A047171.P5047074997939960268

namespace A047171

/-- `A037952(n)+2-A157532(n+1)` -/
def P5047074997939960268.Spec : Prop :=
  ∀ n, P5047074997939960268.a n = A047171 n

end A047171

/-! ## A047171.P13179119017333209849

`A037952(n)-A368684(2*n+1)`
-/

namespace A047171.P13179119017333209849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - A368684 (2 * n + 1)

end

end A047171.P13179119017333209849

namespace A047171

/-- `A037952(n)-A368684(2*n+1)` -/
def P13179119017333209849.Spec : Prop :=
  ∀ n, P13179119017333209849.a n = A047171 n

end A047171

/-! ## A047171.P7307080767732584077

`A037952(n)-A087156(n+1)+n`
-/

namespace A047171.P7307080767732584077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n - A087156 (n + 1) + (n : ℤ)

end

end A047171.P7307080767732584077

namespace A047171

/-- `A037952(n)-A087156(n+1)+n` -/
def P7307080767732584077.Spec : Prop :=
  ∀ n, P7307080767732584077.a n = A047171 n

end A047171

/-! ## A047171.P12789274623315289027

`A208976(n)%A001405(n)`
-/

namespace A047171.P12789274623315289027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208976 n) (A001405 n)

end

end A047171.P12789274623315289027

namespace A047171

/-- `A208976(n)%A001405(n)` -/
def P12789274623315289027.Spec : Prop :=
  ∀ n, P12789274623315289027.a n = A047171 n

end A047171

/-! ## A047171.P8138886023998368887

`Δ[A001405(n)-A028310(n)]`
-/

namespace A047171.P8138886023998368887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047171.P8138886023998368887

namespace A047171

/-- `Δ[A001405(n)-A028310(n)]` -/
def P8138886023998368887.Spec : Prop :=
  ∀ n, P8138886023998368887.a n = A047171 n

end A047171

/-! ## A047171.P18129658429819122176

`∑[A037952(n)]%A001405(n)`
-/

namespace A047171.P18129658429819122176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001405 n)

end

end A047171.P18129658429819122176

namespace A047171

/-- `∑[A037952(n)]%A001405(n)` -/
def P18129658429819122176.Spec : Prop :=
  ∀ n, P18129658429819122176.a n = A047171 n

end A047171

/-! ## A047171.P7579334147169090800

`A047182(n+1)-A037951(n)`
-/

namespace A047171.P7579334147169090800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047182 (n + 1) - A037951 n

end

end A047171.P7579334147169090800

namespace A047171

/-- `A047182(n+1)-A037951(n)` -/
def P7579334147169090800.Spec : Prop :=
  ∀ n, P7579334147169090800.a n = A047171 n

end A047171

/-! ## A047171.P4521689115656414051

`A014495(n+1)%A001405(n)`
-/

namespace A047171.P4521689115656414051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014495 (n + 1)) (A001405 n)

end

end A047171.P4521689115656414051

namespace A047171

/-- `A014495(n+1)%A001405(n)` -/
def P4521689115656414051.Spec : Prop :=
  ∀ n, P4521689115656414051.a n = A047171 n

end A047171

/-! ## A047171.P6077221395177962918

`Δ[A210736(n+1)-A140106(2*n+1)]`
-/

namespace A047171.P6077221395177962918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A140106 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A047171.P6077221395177962918

namespace A047171

/-- `Δ[A210736(n+1)-A140106(2*n+1)]` -/
def P6077221395177962918.Spec : Prop :=
  ∀ n, P6077221395177962918.a n = A047171 n

end A047171

/-! ## A047171.P4787972843105042400

`A014495(n+1)+A000007(n)-A001405(n)`
-/

namespace A047171.P4787972843105042400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A000007 n - A001405 n)

end

end A047171.P4787972843105042400

namespace A047171

/-- `A014495(n+1)+A000007(n)-A001405(n)` -/
def P4787972843105042400.Spec : Prop :=
  ∀ n, P4787972843105042400.a n = A047171 n

end A047171

/-! ## A047171.P1693863958441791362

`A001405(n+1)-(A057427(n)+A001405(n))`
-/

namespace A047171.P1693863958441791362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - (A057427 n + A001405 n)

end

end A047171.P1693863958441791362

namespace A047171

/-- `A001405(n+1)-(A057427(n)+A001405(n))` -/
def P1693863958441791362.Spec : Prop :=
  ∀ n, P1693863958441791362.a n = A047171 n

end A047171

/-! ## A047171.P5349188621032224058

`A014495(n+1)-(A057427(n)+A014495(n))`
-/

namespace A047171.P5349188621032224058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) - (A057427 n + A014495 n)

end

end A047171.P5349188621032224058

namespace A047171

/-- `A014495(n+1)-(A057427(n)+A014495(n))` -/
def P5349188621032224058.Spec : Prop :=
  ∀ n, P5349188621032224058.a n = A047171 n

end A047171

/-!
# A047172: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n-1)/2.

The programs for A047172, there is no canonical definition to state claims against.
-/

/-! ## A047172.P9239061938309784074

`∑[∑[A350681(A047968(n+1))]]`
-/

namespace A047172.P9239061938309784074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350681 (A047968 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047172.P9239061938309784074

/-! ## A047172.P15545329343193294346

`xor(A165477(A319789(n)), A345196(n))`
-/

namespace A047172.P15545329343193294346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165477 (A319789 n).toNat) (A345196 n)

end

end A047172.P15545329343193294346

/-! ## A047172.P9631517629575119579

`A135665(A212910(n+2)+A094015(n))`
-/

namespace A047172.P9631517629575119579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A212910 (n + 2) + A094015 n).toNat

end

end A047172.P9631517629575119579

/-! ## A047172.P10964983253309365100

`A135665(record[A007380(2*n+5)*A191455(n+1)])`
-/

namespace A047172.P10964983253309365100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (2 * n + 5) * A191455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A047172.P10964983253309365100

/-! ## A047172.P2800135467233641883

`A000196(A187068(3*n+4)-A124346(2*(n+1)))`
-/

namespace A047172.P2800135467233641883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A187068 (3 * n + 4) - A124346 (2 * (n + 1))).toNat

end

end A047172.P2800135467233641883

/-!
# A047173: Number of nonempty subsets of {1,2,...,n} in which exactly 2/3 of the elements are <= (n-1)/2.

The programs for A047173, there is no canonical definition to state claims against.
-/

/-! ## A047173.P13952973361075955461

`A056505(n)-A035176(A113827(n+1))`
-/

namespace A047173.P13952973361075955461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 n - A035176 (A113827 (n + 1)).toNat

end

end A047173.P13952973361075955461

/-! ## A047173.P14438728999806047233

`A000194(A000620(n+1)*A223491(n+1))`
-/

namespace A047173.P14438728999806047233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000620 (n + 1) * A223491 (n + 1)).toNat

end

end A047173.P14438728999806047233

/-! ## A047173.P6126095760442467100

`A000194(A000620(n+1)*A275823(n+1))`
-/

namespace A047173.P6126095760442467100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000620 (n + 1) * A275823 (n + 1)).toNat

end

end A047173.P6126095760442467100

/-! ## A047173.P16081111194759006004

`A025842(∑[C(n, 2)+1]^A025819(n+2))`
-/

namespace A047173.P16081111194759006004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025819 (n + 2) : ℤ))).toNat

end

end A047173.P16081111194759006004

/-! ## A047173.P15989165560741126874

`A237113(n)*A326568(A000108(n+3))`
-/

namespace A047173.P15989165560741126874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 n * A326568 (A000108 (n + 3)).toNat

end

end A047173.P15989165560741126874

/-!
# A047174: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-1)/2.

The programs for A047174, there is no canonical definition to state claims against.
-/

/-! ## A047174.P10744689584945863465

`∑[A156078(A304680(n))]`
-/

namespace A047174.P10744689584945863465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A304680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047174.P10744689584945863465

/-! ## A047174.P10285065748847937018

`A002262(or(A001131(n), A026898(n)))`
-/

namespace A047174.P10285065748847937018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.lor (A001131 n) (A026898 n)).toNat

end

end A047174.P10285065748847937018

/-! ## A047174.P14240302192686413980

`A244232(A323229(n))-A244250(n+1)`
-/

namespace A047174.P14240302192686413980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244232 (A323229 n).toNat - A244250 (n + 1)

end

end A047174.P14240302192686413980

/-! ## A047174.P10254023828686849209

`(A343537(n)-1)*A214364(A343537(n))`
-/

namespace A047174.P10254023828686849209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343537 n - 1) * A214364 (A343537 n).toNat

end

end A047174.P10254023828686849209

/-! ## A047174.P8128534810911728515

`A333355(A143554(n))*A333412(n+4)`
-/

namespace A047174.P8128534810911728515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333355 (A143554 n).toNat * A333412 (n + 4)

end

end A047174.P8128534810911728515

/-!
# A047175: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= (n-1)/2.

The programs for A047175, there is no canonical definition to state claims against.
-/

/-! ## A047175.P14130366449980075603

`A080513(n)*A330240(A056473(n+1))`
-/

namespace A047175.P14130366449980075603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A330240 (A056473 (n + 1)).toNat

end

end A047175.P14130366449980075603

/-! ## A047175.P13418121320453835597

`A333321(n+2)-A231238(A333321(n)+1)`
-/

namespace A047175.P13418121320453835597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 (n + 2) - A231238 (A333321 n + 1).toNat

end

end A047175.P13418121320453835597

/-!
# A047176: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-1)/2.

The programs for A047176, there is no canonical definition to state claims against.
-/

/-! ## A047176.P13656991609959821411

`A333320(A062399(n))+A333319(n)`
-/

namespace A047176.P13656991609959821411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (A062399 n).toNat + A333319 n

end

end A047176.P13656991609959821411

/-! ## A047176.P7377675147800049472

`A333320(n)+A333319(A351870(n))`
-/

namespace A047176.P7377675147800049472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 n + A333319 (A351870 n).toNat

end

end A047176.P7377675147800049472

/-! ## A047176.P3580215986284400434

`A108611(Δ[A182522(n)])*A111660(n)`
-/

namespace A047176.P3580215986284400434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (f1 (n + 1) - f1 n).toNat * A111660 n

end

end A047176.P3580215986284400434

/-! ## A047176.P12826757118047558603

`A072739(A214459(n))`
-/

namespace A047176.P12826757118047558603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A214459 n).toNat

end

end A047176.P12826757118047558603

/-!
# A047177: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-1)/2.

The programs for A047177, there is no canonical definition to state claims against.
-/

/-! ## A047177.P8459755280948842314

`A048077(A062399(n+1))`
-/

namespace A047177.P8459755280948842314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (A062399 (n + 1)).toNat

end

end A047177.P8459755280948842314

/-! ## A047177.P12708304554132024568

`A048077(A120126(n+1))`
-/

namespace A047177.P12708304554132024568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (A120126 (n + 1)).toNat

end

end A047177.P12708304554132024568

/-! ## A047177.P13938291110316271705

`A227370(A048088(n+1))`
-/

namespace A047177.P13938291110316271705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (A048088 (n + 1)).toNat

end

end A047177.P13938291110316271705

/-! ## A047177.P10615592150014807169

`A048077(A351870(n+1))`
-/

namespace A047177.P10615592150014807169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (A351870 (n + 1)).toNat

end

end A047177.P10615592150014807169

/-!
# A047178: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-1)/2.

The programs for A047178, there is no canonical definition to state claims against.
-/

/-! ## A047178.P17896661415967231962

`A330299(n)+A330300(n)%A330308(n+1)`
-/

namespace A047178.P17896661415967231962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 n + Int.tmod (A330300 n) (A330308 (n + 1))

end

end A047178.P17896661415967231962

/-! ## A047178.P690988466783890970

`A344450(∑{d}[A118330(n), #])`
-/

namespace A047178.P690988466783890970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344450 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A047178.P690988466783890970

/-! ## A047178.P11738033549413328871

`A332891(xor(1, A048089(n+1)))`
-/

namespace A047178.P11738033549413328871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332891 (Int.xor 1 (A048089 (n + 1))).toNat

end

end A047178.P11738033549413328871

/-! ## A047178.P6405200219334461067

`A048089(n+1)%A119175(A118330(n))`
-/

namespace A047178.P6405200219334461067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048089 (n + 1)) (A119175 (A118330 n).toNat)

end

end A047178.P6405200219334461067

/-! ## A047178.P458887585231717146

`A284264(A241893(n))`
-/

namespace A047178.P458887585231717146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (A241893 n).toNat

end

end A047178.P458887585231717146

/-!
# A047179: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-1)/2.

The programs for A047179, there is no canonical definition to state claims against.
-/

/-! ## A047179.P16427504740493691699

`A000005(A056451(n))*A000332(A004526(n))`
-/

namespace A047179.P16427504740493691699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056451 n).toNat * A000332 (A004526 n).toNat

end

end A047179.P16427504740493691699

/-! ## A047179.P15057043943154184163

`A000005(A056451(n))*A000332(A123108(n))`
-/

namespace A047179.P15057043943154184163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056451 n).toNat * A000332 (A123108 n).toNat

end

end A047179.P15057043943154184163

/-! ## A047179.P2916594869864738098

`A000332(A004526(n))*A008619(A187829(n+1))`
-/

namespace A047179.P2916594869864738098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A008619 (A187829 (n + 1)).toNat

end

end A047179.P2916594869864738098

/-! ## A047179.P4056271452981331528

`A000332(A123108(n))*A008619(A187829(n+1))`
-/

namespace A047179.P4056271452981331528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A123108 n).toNat * A008619 (A187829 (n + 1)).toNat

end

end A047179.P4056271452981331528

/-! ## A047179.P15554942496503522378

`A231238(A333321(n)+1)`
-/

namespace A047179.P15554942496503522378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (A333321 n + 1).toNat

end

end A047179.P15554942496503522378

/-!
# A047180: Number of nonempty subsets of {1,2,...,n} in which exactly 1/6 of the elements are <= (n-1)/2.

The programs for A047180, there is no canonical definition to state claims against.
-/

/-! ## A047180.P511074241466097365

`A002266(A008619(n+1)*A333320(n))`
-/

namespace A047180.P511074241466097365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008619 (n + 1) * A333320 n).toNat

end

end A047180.P511074241466097365

/-! ## A047180.P536221016108464662

`A000389(A187829(n+1)-A004526(n))*A004526(n)`
-/

namespace A047180.P536221016108464662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A187829 (n + 1) - A004526 n).toNat * A004526 n

end

end A047180.P536221016108464662

/-!
# A047181: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n-1)/2.

The programs for A047181, there is no canonical definition to state claims against.
-/

/-! ## A047181.P1320393670688189746

`A000389(A004526(n))*A008619(A187829(n+1))`
-/

namespace A047181.P1320393670688189746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A004526 n).toNat * A008619 (A187829 (n + 1)).toNat

end

end A047181.P1320393670688189746

/-! ## A047181.P1517737153209747422

`A203967(n^A326631(n))`
-/

namespace A047181.P1517737153209747422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203967 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A326631 n : ℤ))).toNat

end

end A047181.P1517737153209747422

/-! ## A047181.P18008602323793647342

`A038054(n)%A003056(A143572(n))`
-/

namespace A047181.P18008602323793647342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038054 n) (A003056 (A143572 n).toNat)

end

end A047181.P18008602323793647342

/-! ## A047181.P5293889562565777071

`A029931(n)*A122287(A056485(n+1))`
-/

namespace A047181.P5293889562565777071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n * A122287 (A056485 (n + 1)).toNat

end

end A047181.P5293889562565777071

/-! ## A047181.P14239054283195754837

`A055086(A193488(n+1))%A012260(A055086(n))`
-/

namespace A047181.P14239054283195754837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055086 (A193488 (n + 1)).toNat) (A012260 (A055086 n).toNat)

end

end A047181.P14239054283195754837

/-!
# A047182: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n-2)/2.

The programs for A047182, the canonical program `A047182.P3338192460869076266` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047182 has offset 1).

The definition of A047182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A047182.P1120192447371526135

`A047171(n)+A037951(n)`
-/

namespace A047182.P1120192447371526135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 n + A037951 n

end

end A047182.P1120192447371526135

namespace A047182

/-- `A047171(n)+A037951(n)` -/
def P1120192447371526135.Spec : Prop :=
  ∀ n, P1120192447371526135.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P3338192460869076266

`A037955(A028310(n)+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A047182

/-- `A037955(A028310(n)+1)-1` -/
def P3338192460869076266.Spec : Prop :=
  ∀ n, P3338192460869076266.a n = A047182 (n + 1)

theorem P3338192460869076266.correct : P3338192460869076266.Spec := by
  intro n
  simp only [A047182, Nat.add_sub_cancel]

end A047182

/-! ## A047182.P8259264133948937536

`A140106(2*n+1)+A037955(n+1)-n`
-/

namespace A047182.P8259264133948937536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * n + 1) + (A037955 (n + 1) - (n : ℤ))

end

end A047182.P8259264133948937536

namespace A047182

/-- `A140106(2*n+1)+A037955(n+1)-n` -/
def P8259264133948937536.Spec : Prop :=
  ∀ n, P8259264133948937536.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P2869587431495605176

`C(n+1, floor(∑[n]/(n+2)))-1`
-/

namespace A047182.P2869587431495605176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋.toNat : ℤ) - 1

end

end A047182.P2869587431495605176

namespace A047182

/-- `C(n+1, floor(∑[n]/(n+2)))-1` -/
def P2869587431495605176.Spec : Prop :=
  ∀ n, P2869587431495605176.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P8921853141489101343

`A047171(2*n)+A037955(n+1)-A037955(2*n)`
-/

namespace A047182.P8921853141489101343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (2 * n) + (A037955 (n + 1) - A037955 (2 * n))

end

end A047182.P8921853141489101343

namespace A047182

/-- `A047171(2*n)+A037955(n+1)-A037955(2*n)` -/
def P8921853141489101343.Spec : Prop :=
  ∀ n, P8921853141489101343.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P13818831443985371945

`A265848(A055998(n)+1)-1`
-/

namespace A047182.P13818831443985371945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (A055998 n + 1).toNat - 1

end

end A047182.P13818831443985371945

namespace A047182

/-- `A265848(A055998(n)+1)-1` -/
def P13818831443985371945.Spec : Prop :=
  ∀ n, P13818831443985371945.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P1928701402029070266

`A265848(A084265(n)+1)-1`
-/

namespace A047182.P1928701402029070266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265848 (A084265 n + 1).toNat - 1

end

end A047182.P1928701402029070266

namespace A047182

/-- `A265848(A084265(n)+1)-1` -/
def P1928701402029070266.Spec : Prop :=
  ∀ n, P1928701402029070266.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P18333953604030207805

`A007318(∑[or(1, n+1)]-1)-1`
-/

namespace A047182.P18333953604030207805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A047182.P18333953604030207805

namespace A047182

/-- `A007318(∑[or(1, n+1)]-1)-1` -/
def P18333953604030207805.Spec : Prop :=
  ∀ n, P18333953604030207805.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P13815505542194085543

`A007318(floor((n+1)²/2+n))-1`
-/

namespace A047182.P13815505542194085543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊((n + 1) ^ 2 : ℚ) / 2 + (n : ℚ)⌋.toNat - 1

end

end A047182.P13815505542194085543

namespace A047182

/-- `A007318(floor((n+1)²/2+n))-1` -/
def P13815505542194085543.Spec : Prop :=
  ∀ n, P13815505542194085543.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P1086955889017442142

`A134059(∑[or(1, n)]+n+2)/3-1`
-/

namespace A047182.P1086955889017442142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (∑ j ∈ Finset.range (n + 1), f1 j + n + 2) : ℚ) / 3 - 1

end

end A047182.P1086955889017442142

namespace A047182

/-- `A134059(∑[or(1, n)]+n+2)/3-1` -/
def P1086955889017442142.Spec : Prop :=
  ∀ n, P1086955889017442142.a n = (A047182 (n + 1) : ℚ)

end A047182

/-! ## A047182.P9048276309071415392

`A014473(A116940(n))`
-/

namespace A047182.P9048276309071415392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A116940 n).toNat

end

end A047182.P9048276309071415392

namespace A047182

/-- `A014473(A116940(n))` -/
def P9048276309071415392.Spec : Prop :=
  ∀ n, P9048276309071415392.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P10268484453000160370

`A014473(A326657(n+1))`
-/

namespace A047182.P10268484453000160370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A326657 (n + 1)).toNat

end

end A047182.P10268484453000160370

namespace A047182

/-- `A014473(A326657(n+1))` -/
def P10268484453000160370.Spec : Prop :=
  ∀ n, P10268484453000160370.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P7083275931866761298

`A014473(A080827(n+2))`
-/

namespace A047182.P7083275931866761298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A080827 (n + 2)).toNat

end

end A047182.P7083275931866761298

namespace A047182

/-- `A014473(A080827(n+2))` -/
def P7083275931866761298.Spec : Prop :=
  ∀ n, P7083275931866761298.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P15399178107729577077

`A014473(A179207(n+1)+1)`
-/

namespace A047182.P15399178107729577077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A179207 (n + 1) + 1).toNat

end

end A047182.P15399178107729577077

namespace A047182

/-- `A014473(A179207(n+1)+1)` -/
def P15399178107729577077.Spec : Prop :=
  ∀ n, P15399178107729577077.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P6882357872468021970

`A014473(A080476(n+2)+1)`
-/

namespace A047182.P6882357872468021970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A080476 (n + 2) + 1).toNat

end

end A047182.P6882357872468021970

namespace A047182

/-- `A014473(A080476(n+2)+1)` -/
def P6882357872468021970.Spec : Prop :=
  ∀ n, P6882357872468021970.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P5375176679860403724

`A014473(A000982(n+2)-2)`
-/

namespace A047182.P5375176679860403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000982 (n + 2) - 2).toNat

end

end A047182.P5375176679860403724

namespace A047182

/-- `A014473(A000982(n+2)-2)` -/
def P5375176679860403724.Spec : Prop :=
  ∀ n, P5375176679860403724.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P9360565133219232002

`A014473(A007590(n+1)+n)`
-/

namespace A047182.P9360565133219232002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A007590 (n + 1) + (n : ℤ)).toNat

end

end A047182.P9360565133219232002

namespace A047182

/-- `A014473(A007590(n+1)+n)` -/
def P9360565133219232002.Spec : Prop :=
  ∀ n, P9360565133219232002.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P5291160664156744897

`A014473(A000982(n)+n+n)`
-/

namespace A047182.P5291160664156744897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A000982 n + (n : ℤ) + (n : ℤ)).toNat

end

end A047182.P5291160664156744897

namespace A047182

/-- `A014473(A000982(n)+n+n)` -/
def P5291160664156744897.Spec : Prop :=
  ∀ n, P5291160664156744897.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P14473334795239010443

`A014473(∑[A109613(n+1)]-1)`
-/

namespace A047182.P14473334795239010443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A047182.P14473334795239010443

namespace A047182

/-- `A014473(∑[A109613(n+1)]-1)` -/
def P14473334795239010443.Spec : Prop :=
  ∀ n, P14473334795239010443.a n = A047182 (n + 1)

end A047182

/-! ## A047182.P12867370163112029300

`A014473(A087327(n+1)+2+n)`
-/

namespace A047182.P12867370163112029300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A087327 (n + 1) + 2 + (n : ℤ)).toNat

end

end A047182.P12867370163112029300

namespace A047182

/-- `A014473(A087327(n+1)+2+n)` -/
def P12867370163112029300.Spec : Prop :=
  ∀ n, P12867370163112029300.a n = A047182 (n + 1)

end A047182

/-!
# A047183: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= (n-2)/2.

The programs for A047183, there is no canonical definition to state claims against.
-/

/-! ## A047183.P13688202662050314115

`A224932(A018240(n+3)+1)`
-/

namespace A047183.P13688202662050314115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224932 (A018240 (n + 3) + 1).toNat

end

end A047183.P13688202662050314115

/-! ## A047183.P2026625668038153181

`A123578(A148930(n)-A041901(n))`
-/

namespace A047183.P2026625668038153181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A148930 n - A041901 n).toNat

end

end A047183.P2026625668038153181

/-! ## A047183.P10016675328850176157

`A047194(n+1)-A000007(A298330(n))`
-/

namespace A047183.P10016675328850176157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (n + 1) - A000007 (A298330 n).toNat

end

end A047183.P10016675328850176157

/-! ## A047183.P10480919663377339961

`A047194(n+1)%A196720(A047171(n))`
-/

namespace A047183.P10480919663377339961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047194 (n + 1)) (A196720 (A047171 n).toNat)

end

end A047183.P10480919663377339961

/-! ## A047183.P16632511940086671599

`A047194(n+1)*A324903(A047194(2*n+3))`
-/

namespace A047183.P16632511940086671599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047194 (n + 1) * A324903 (A047194 (2 * n + 3)).toNat

end

end A047183.P16632511940086671599

/-!
# A047184: Number of nonempty subsets of {1,2,...,n} in which exactly 2/3 of the elements are <= (n-2)/2.

The programs for A047184, there is no canonical definition to state claims against.
-/

/-! ## A047184.P16675018613541040527

`A048073(n+1)%A062886(A048076(n+1))`
-/

namespace A047184.P16675018613541040527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048073 (n + 1)) (A062886 (A048076 (n + 1)).toNat)

end

end A047184.P16675018613541040527

/-!
# A047185: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= (n-2)/2.

The programs for A047185, there is no canonical definition to state claims against.
-/

/-! ## A047185.P8129883953504539251

`A098166(A004064(n+1))%A126471(n)`
-/

namespace A047185.P8129883953504539251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098166 (A004064 (n + 1)).toNat) (A126471 n)

end

end A047185.P8129883953504539251

/-! ## A047185.P1698480115333296892

`A048041(n+1)^A344639(A048005(n+1))`
-/

namespace A047185.P1698480115333296892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048041 (n + 1) : ℚ) ^ (A344639 (A048005 (n + 1)).toNat : ℤ)

end

end A047185.P1698480115333296892

/-!
# A047187: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= (n-2)/2.

The programs for A047187, there is no canonical definition to state claims against.
-/

/-! ## A047187.P368998589854593470

`A279794(A279554(n)+1)`
-/

namespace A047187.P368998589854593470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279794 (A279554 n + 1).toNat

end

end A047187.P368998589854593470

/-! ## A047187.P12836506599774800088

`A375085(A056519(n+2))`
-/

namespace A047187.P12836506599774800088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375085 (A056519 (n + 2)).toNat

end

end A047187.P12836506599774800088

/-! ## A047187.P16761642556330552907

`A180649(A265224(n+2)+1)`
-/

namespace A047187.P16761642556330552907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A265224 (n + 2) + 1).toNat

end

end A047187.P16761642556330552907

/-! ## A047187.P13870681129774178673

`(char[∑[n]]+1)*A024317(A000939(n+1))`
-/

namespace A047187.P13870681129774178673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A024317 (A000939 (n + 1)).toNat

end

end A047187.P13870681129774178673

/-! ## A047187.P2946886382944153129

`A138477(n)-A326641(A138477(n))`
-/

namespace A047187.P2946886382944153129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 n - A326641 (A138477 n).toNat

end

end A047187.P2946886382944153129

/-!
# A047188: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= (n-2)/2.

The programs for A047188, there is no canonical definition to state claims against.
-/

/-! ## A047188.P7178765680384447102

`A048077(n+1)-A128616(A034959(n+1))`
-/

namespace A047188.P7178765680384447102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048077 (n + 1) - A128616 (A034959 (n + 1)).toNat

end

end A047188.P7178765680384447102

/-! ## A047188.P9478501883489358704

`A265541(floor(12/7*C(n, 4)/2))`
-/

namespace A047188.P9478501883489358704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 ⌊(12 : ℚ) / 7 * (Nat.choose n 4 : ℚ) / 2⌋.toNat

end

end A047188.P9478501883489358704

/-! ## A047188.P3299017185161398805

`A265541(A011935(n))`
-/

namespace A047188.P3299017185161398805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A011935 n).toNat

end

end A047188.P3299017185161398805

/-! ## A047188.P12846076218228533740

`A265541(A011936(n))`
-/

namespace A047188.P12846076218228533740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A011936 n).toNat

end

end A047188.P12846076218228533740

/-! ## A047188.P8011168830312416791

`A265541(A011937(n))`
-/

namespace A047188.P8011168830312416791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A011937 n).toNat

end

end A047188.P8011168830312416791

/-!
# A047189: Number of nonempty subsets of {1,2,...,n} in which exactly 3/5 of the elements are <= (n-2)/2.

The programs for A047189, there is no canonical definition to state claims against.
-/

/-! ## A047189.P14611013997739559400

`A048078(n+1)*A170958(A254308(n))`
-/

namespace A047189.P14611013997739559400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048078 (n + 1) * A170958 (A254308 n).toNat

end

end A047189.P14611013997739559400

/-! ## A047189.P15851503612971330152

`∑{p}[A216702(A308959(n)), #*A363822(n)]`
-/

namespace A047189.P15851503612971330152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216702 (A308959 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A363822 n

end

end A047189.P15851503612971330152

/-! ## A047189.P14558307933810249006

`A378385(A367969(n+1))`
-/

namespace A047189.P14558307933810249006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378385 (A367969 (n + 1)).toNat

end

end A047189.P14558307933810249006

/-! ## A047189.P12646074283683088932

`5*A216601(A054357(n))`
-/

namespace A047189.P12646074283683088932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A216601 (A054357 n).toNat

end

end A047189.P12646074283683088932

/-! ## A047189.P8777318067978894810

`A124768(A324088(n+1))*A276086(n)`
-/

namespace A047189.P8777318067978894810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A324088 (n + 1)).toNat * A276086 n

end

end A047189.P8777318067978894810

/-!
# A047190: Number of nonempty subsets of {1,2,...,n} in which exactly 4/5 of the elements are <= (n-2)/2.

The programs for A047190, there is no canonical definition to state claims against.
-/

/-! ## A047190.P1022357029920436966

`A070939(A342853(n))*A100355(A065033(n))`
-/

namespace A047190.P1022357029920436966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A342853 n).toNat * A100355 (A065033 n).toNat

end

end A047190.P1022357029920436966

/-! ## A047190.P10548820051339604554

`lcm(A004396(n), A163577(A273096(n)))`
-/

namespace A047190.P10548820051339604554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004396 n) (A163577 (A273096 n).toNat)

end

end A047190.P10548820051339604554

/-! ## A047190.P15611348977225943797

`A025280(n+1)*A133178(A096111(n))`
-/

namespace A047190.P15611348977225943797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) * A133178 (A096111 n).toNat

end

end A047190.P15611348977225943797

/-! ## A047190.P121366414464305375

`A011737(A001891(n+3))*A048090(n+1)`
-/

namespace A047190.P121366414464305375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011737 (A001891 (n + 3)).toNat * A048090 (n + 1)

end

end A047190.P121366414464305375

/-! ## A047190.P18174600511696942598

`A048090(n+1)*A117943(A048033(n+5)+A001105(2*n+1))`
-/

namespace A047190.P18174600511696942598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048090 (n + 1) * A117943 (A048033 (n + 5) + A001105 (2 * n + 1)).toNat

end

end A047190.P18174600511696942598

/-!
# A047192: Number of nonempty subsets of {1,2,...,n} in which exactly 5/6 of the elements are <= (n-2)/2.

The programs for A047192, there is no canonical definition to state claims against.
-/

/-! ## A047192.P558004972690473895

`A020901(A290212(2*n+1))%A202917(n)`
-/

namespace A047192.P558004972690473895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020901 (A290212 (2 * n + 1)).toNat) (A202917 n)

end

end A047192.P558004972690473895

/-! ## A047192.P16301730931071005944

`A035493(2*(n+2))%A275084(A275065(n))`
-/

namespace A047192.P16301730931071005944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035493 (2 * (n + 2))) (A275084 (A275065 n).toNat)

end

end A047192.P16301730931071005944

/-! ## A047192.P1259142458195542398

`A211020(C(A317088(3*(n+1)), A211020(n)))`
-/

namespace A047192.P1259142458195542398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211020 (Nat.choose (A317088 (3 * (n + 1))).toNat (A211020 n).toNat)

end

end A047192.P1259142458195542398

/-!
# A047193: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= n/3.

The programs for A047193, the canonical program `A047193.P3620569494057212592` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A047193 has offset 1).

The definition of A047193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A047193.P3620569494057212592

`A051033(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A047193

/-- `A051033(n+1)-1` -/
def P3620569494057212592.Spec : Prop :=
  ∀ n, P3620569494057212592.a n = A047193 (n + 1)

theorem P3620569494057212592.correct : P3620569494057212592.Spec := by
  intro n
  simp only [A047193, Nat.add_sub_cancel]

end A047193

/-! ## A047193.P3497850377063693579

`∑[abs(Δ[A051033(n)])]`
-/

namespace A047193.P3497850377063693579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047193.P3497850377063693579

namespace A047193

/-- `∑[abs(Δ[A051033(n)])]` -/
def P3497850377063693579.Spec : Prop :=
  ∀ n, P3497850377063693579.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P9647605433773315152

`A048038(n+1)%Δ[A048071(n+1)]`
-/

namespace A047193.P9647605433773315152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048038 (n + 1)) (f1 (n + 1) - f1 n)

end

end A047193.P9647605433773315152

namespace A047193

/-- `A048038(n+1)%Δ[A048071(n+1)]` -/
def P9647605433773315152.Spec : Prop :=
  ∀ n, P9647605433773315152.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P15933631616763611673

`C(n+1, round(n/3))-1`
-/

namespace A047193.P15933631616763611673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat : ℤ) - 1

end

end A047193.P15933631616763611673

namespace A047193

/-- `C(n+1, round(n/3))-1` -/
def P15933631616763611673.Spec : Prop :=
  ∀ n, P15933631616763611673.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P17822952985862957817

`∑[C(n, A133310(n))]`
-/

namespace A047193.P17822952985862957817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A133310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047193.P17822952985862957817

namespace A047193

/-- `∑[C(n, A133310(n))]` -/
def P17822952985862957817.Spec : Prop :=
  ∀ n, (P17822952985862957817.a n : ℤ) = A047193 (n + 1)

end A047193

/-! ## A047193.P16003985825305034201

`A074909(A171452(n+1))-1`
-/

namespace A047193.P16003985825305034201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A171452 (n + 1)).toNat - 1

end

end A047193.P16003985825305034201

namespace A047193

/-- `A074909(A171452(n+1))-1` -/
def P16003985825305034201.Spec : Prop :=
  ∀ n, P16003985825305034201.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P7846273157212519070

`A007318(∑[∑[n%3]+1])-1`
-/

namespace A047193.P7846273157212519070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A047193.P7846273157212519070

namespace A047193

/-- `A007318(∑[∑[n%3]+1])-1` -/
def P7846273157212519070.Spec : Prop :=
  ∀ n, P7846273157212519070.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P876158072230078598

`A014473(A027916(n+2))`
-/

namespace A047193.P876158072230078598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A027916 (n + 2)).toNat

end

end A047193.P876158072230078598

namespace A047193

/-- `A014473(A027916(n+2))` -/
def P876158072230078598.Spec : Prop :=
  ∀ n, P876158072230078598.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P13597759634632885597

`A014473(A111097(n+2))`
-/

namespace A047193.P13597759634632885597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A111097 (n + 2)).toNat

end

end A047193.P13597759634632885597

namespace A047193

/-- `A014473(A111097(n+2))` -/
def P13597759634632885597.Spec : Prop :=
  ∀ n, P13597759634632885597.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P2825340548096320903

`A014473(∑[A092200(n+2)-2])`
-/

namespace A047193.P2825340548096320903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047193.P2825340548096320903

namespace A047193

/-- `A014473(∑[A092200(n+2)-2])` -/
def P2825340548096320903.Spec : Prop :=
  ∀ n, P2825340548096320903.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P8586656988185668017

`A014473(∑[A101825(n+3)+n])`
-/

namespace A047193.P8586656988185668017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047193.P8586656988185668017

namespace A047193

/-- `A014473(∑[A101825(n+3)+n])` -/
def P8586656988185668017.Spec : Prop :=
  ∀ n, P8586656988185668017.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P12089947360747226808

`A014473(∑[A107751(n+3)+n])`
-/

namespace A047193.P12089947360747226808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A047193.P12089947360747226808

namespace A047193

/-- `A014473(∑[A107751(n+3)+n])` -/
def P12089947360747226808.Spec : Prop :=
  ∀ n, P12089947360747226808.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P1496559199030101938

`A014473(A002264(2*n+1)+A000124(n+1))`
-/

namespace A047193.P1496559199030101938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (A002264 (2 * n + 1) + A000124 (n + 1)).toNat

end

end A047193.P1496559199030101938

namespace A047193

/-- `A014473(A002264(2*n+1)+A000124(n+1))` -/
def P1496559199030101938.Spec : Prop :=
  ∀ n, P1496559199030101938.a n = A047193 (n + 1)

end A047193

/-! ## A047193.P12419177255858039369

`A071919(A024401(n+2))-1`
-/

namespace A047193.P12419177255858039369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A024401 (n + 2)).toNat - 1

end

end A047193.P12419177255858039369

namespace A047193

/-- `A071919(A024401(n+2))-1` -/
def P12419177255858039369.Spec : Prop :=
  ∀ n, P12419177255858039369.a n = A047193 (n + 1)

end A047193

/-!
# A047194: Number of nonempty subsets of {1,2,...,n} in which exactly 1/3 of the elements are <= n/3.

The programs for A047194, there is no canonical definition to state claims against.
-/

/-! ## A047194.P12985784979952812400

`A048094(n+1)+A014037(A000105(n))`
-/

namespace A047194.P12985784979952812400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048094 (n + 1) + A014037 (A000105 n).toNat

end

end A047194.P12985784979952812400

/-! ## A047194.P15401565818986328892

`A151774(A048099(n+1))+A048094(n+1)`
-/

namespace A047194.P15401565818986328892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 (A048099 (n + 1)).toNat + A048094 (n + 1)

end

end A047194.P15401565818986328892

/-! ## A047194.P9052593982023217447

`or(A048094(n+1), A189126(A097220(n+1)))`
-/

namespace A047194.P9052593982023217447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048094 (n + 1)) (A189126 (A097220 (n + 1)).toNat)

end

end A047194.P9052593982023217447

/-! ## A047194.P7330545717022976023

`A209229(A048091(2*n+3))+A048094(n+1)`
-/

namespace A047194.P7330545717022976023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A048091 (2 * n + 3)).toNat + A048094 (n + 1)

end

end A047194.P7330545717022976023

/-! ## A047194.P16916684244737837749

`or(A048094(n+1), A102283(A048078(2*(n+1))))`
-/

namespace A047194.P16916684244737837749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048094 (n + 1)) (A102283 (A048078 (2 * (n + 1))).toNat)

end

end A047194.P16916684244737837749

/-!
# A047196: Number of nonempty subsets of {1,2,...,n} in which exactly 1/4 of the elements are <= n/3.

The programs for A047196, there is no canonical definition to state claims against.
-/

/-! ## A047196.P5301737476592465199

`A219254(A371607(n)-A005361(n+1))`
-/

namespace A047196.P5301737476592465199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219254 (A371607 n - A005361 (n + 1)).toNat

end

end A047196.P5301737476592465199

/-!
# A047197: Number of nonempty subsets of {1,2,...,n} in which exactly 3/4 of the elements are <= n/3.

The programs for A047197, there is no canonical definition to state claims against.
-/

/-! ## A047197.P10759119645498745576

`A087734(∑[A160449(n)!])`
-/

namespace A047197.P10759119645498745576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A160449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047197.P10759119645498745576

/-! ## A047197.P14358316851519456672

`A087734(∑[A340968(n)!])`
-/

namespace A047197.P14358316851519456672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A340968 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A047197.P14358316851519456672

/-! ## A047197.P10971088610394134238

`∑[A008300(n)%A309861(n)]`
-/

namespace A047197.P10971088610394134238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008300 n) (A309861 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047197.P10971088610394134238

/-! ## A047197.P8286199954548020306

`A046080(A127384(n))*A372306(n+1)`
-/

namespace A047197.P8286199954548020306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A127384 n).toNat * A372306 (n + 1)

end

end A047197.P8286199954548020306

/-! ## A047197.P15526425972784664136

`A010874(A014378(n+1))*A057362(2*n+1)`
-/

namespace A047197.P15526425972784664136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A014378 (n + 1)).toNat * A057362 (2 * n + 1)

end

end A047197.P15526425972784664136

/-!
# A047198: Number of nonempty subsets of {1,2,...,n} in which exactly 1/5 of the elements are <= n/3.

The programs for A047198, there is no canonical definition to state claims against.
-/

/-! ## A047198.P1433594747462592921

`A249783(A014341(n))`
-/

namespace A047198.P1433594747462592921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249783 (A014341 n).toNat

end

end A047198.P1433594747462592921

/-! ## A047198.P5956860041865280361

`∑[A229164(n+1)%A008574(n)]`
-/

namespace A047198.P5956860041865280361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229164 (n + 1)) (A008574 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A047198.P5956860041865280361

/-! ## A047198.P12747898230878160342

`∑[A320024(n+1)]%A282741(n)`
-/

namespace A047198.P12747898230878160342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A282741 n)

end

end A047198.P12747898230878160342

/-! ## A047198.P18219619232992676293

`A039706(A074417(n+1))*A359896(n)`
-/

namespace A047198.P18219619232992676293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039706 (A074417 (n + 1)).toNat * A359896 n

end

end A047198.P18219619232992676293

/-! ## A047198.P8429811688101228827

`A319047(A318683(n+3)+A000179(n))`
-/

namespace A047198.P8429811688101228827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A318683 (n + 3) + A000179 n).toNat

end

end A047198.P8429811688101228827

/-!
# A047199: Number of nonempty subsets of {1,2,...,n} in which exactly 2/5 of the elements are <= n/3.

The programs for A047199, there is no canonical definition to state claims against.
-/

/-! ## A047199.P4306332924846833500

`∑{d}[A003266(n), val(#, 5)]`
-/

namespace A047199.P4306332924846833500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.valuation d 5

end

end A047199.P4306332924846833500

/-! ## A047199.P13742456099969078013

`A165762(3*n+1)%(2^n)/4`
-/

namespace A047199.P13742456099969078013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A165762 (3 * n + 1)) (2 ^ n : ℤ) : ℚ) / 4

end

end A047199.P13742456099969078013

/-! ## A047199.P12195146508918407142

`A113221(A212330(n))`
-/

namespace A047199.P12195146508918407142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A212330 n).toNat

end

end A047199.P12195146508918407142

/-! ## A047199.P4322306534609720971

`A261915(8*A293045(n))`
-/

namespace A047199.P4322306534609720971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 (8 * A293045 n).toNat

end

end A047199.P4322306534609720971

