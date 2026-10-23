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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A010330: Numbers k such that C(k,3) = C(x,3) + C(y,3) is solvable.

The programs for A010330, there is no canonical definition to state claims against.
-/

/-! ## A010330.P12840326750073033055

`A002311(n+1)+2`
-/

namespace A010330.P12840326750073033055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002311 (n + 1) + 2

end

end A010330.P12840326750073033055

/-! ## A010330.P914051256223956560

`A009056(A002311(n+1))`
-/

namespace A010330.P914051256223956560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A002311 (n + 1)).toNat

end

end A010330.P914051256223956560

/-!
# A010333: Length of period of continued for sqrt(A003814(n)).

The programs for A010333, there is no canonical definition to state claims against.
-/

/-! ## A010333.P9558275092128916975

`A013943(eq[1, A013943(n+1)%2]+1)`
-/

namespace A010333.P9558275092128916975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013943 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A010333.P9558275092128916975

/-! ## A010333.P17411603569826231636

`A013943(eq[1, and(1, A013943(n+1))]+1)`
-/

namespace A010333.P17411603569826231636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A013943 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A010333.P17411603569826231636

/-! ## A010333.P10275435208584700750

`A003285(A003814(n+1))`
-/

namespace A010333.P10275435208584700750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A003814 (n + 1)).toNat

end

end A010333.P10275435208584700750

/-! ## A010333.P9902360251705496841

`A003285(A031396(n+2))`
-/

namespace A010333.P9902360251705496841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A031396 (n + 2)).toNat

end

end A010333.P9902360251705496841

/-! ## A010333.P11229623543372009359

`A003285(eq[1, A003285(n+1)%2]+1)`
-/

namespace A010333.P11229623543372009359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003285 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A010333.P11229623543372009359

/-! ## A010333.P4926731665855113246

`A003285(record[A191855(n+1)])`
-/

namespace A010333.P4926731665855113246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A010333.P4926731665855113246

/-!
# A010335: Central term in continued fraction for sqrt(n) is [ sqrt(n) ].

The programs for A010335, there is no canonical definition to state claims against.
-/

/-! ## A010335.P16643834424191277101

`eq[A000196(n), A308778(n)]`
-/

namespace A010335.P16643834424191277101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010335.P16643834424191277101

/-! ## A010335.P6634437518642623528

`eq[sqrt(A048760(n)), A308778(n)]`
-/

namespace A010335.P6634437518642623528
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A010335.P6634437518642623528

/-! ## A010335.P14740556044785314367

`eq[A000267(A002265(n)), A308778(n)]`
-/

namespace A010335.P14740556044785314367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A002265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010335.P14740556044785314367

/-! ## A010335.P13130372491117593875

`eq[A123108(A000267(n)), A308778(n)]`
-/

namespace A010335.P13130372491117593875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000267 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010335.P13130372491117593875

/-! ## A010335.P15577424745292886098

`eq[A172471(A123108(n)), A308778(n)]`
-/

namespace A010335.P15577424745292886098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A123108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010335.P15577424745292886098

/-! ## A010335.P421341828685545482

`eq[A308778(A048760(n)+2), A308778(n)]`
-/

namespace A010335.P421341828685545482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A048760 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010335.P421341828685545482

/-!
# A010337: Numbers k such that the continued fraction for sqrt(k) has period 5.

The programs for A010337, there is no canonical definition to state claims against.
-/

/-! ## A010337.P7989095451164491200

`A003814(eq[5, A010333(n+1)]+1)`
-/

namespace A010337.P7989095451164491200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A010337.P7989095451164491200

/-! ## A010337.P4964865394984378279

`eq[5, A003285(n+1)]+1`
-/

namespace A010337.P4964865394984378279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A010337.P4964865394984378279

/-! ## A010337.P3694717515770233839

`eq[5, A097853(n+1)]+1`
-/

namespace A010337.P3694717515770233839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A010337.P3694717515770233839

/-! ## A010337.P14742630706710559755

`eq[6, A067280(n+1)]+1`
-/

namespace A010337.P14742630706710559755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A010337.P14742630706710559755

/-! ## A010337.P12571323935086907785

`eq[5, A003285(A028310(n))]`
-/

namespace A010337.P12571323935086907785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010337.P12571323935086907785

/-! ## A010337.P14435555613609877374

`A020725(eq[5, A003285(n+1)])`
-/

namespace A010337.P14435555613609877374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010337.P14435555613609877374

/-! ## A010337.P4756798623944862703

`A020725(eq[5, A097853(n+1)])`
-/

namespace A010337.P4756798623944862703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010337.P4756798623944862703

/-! ## A010337.P14132369011846263983

`A065475(eq[5, A097853(n+1)])`
-/

namespace A010337.P14132369011846263983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010337.P14132369011846263983

/-! ## A010337.P11838117688712274729

`A166517(eq[5, A003285(A166517(n))])`
-/

namespace A010337.P11838117688712274729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010337.P11838117688712274729

/-! ## A010337.P682639149465095296

`eq[5, A003285(A065033(2*n))]`
-/

namespace A010337.P682639149465095296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010337.P682639149465095296

/-!
# A010338: Numbers k such that the continued fraction for sqrt(k) has period 7.

The programs for A010338, there is no canonical definition to state claims against.
-/

/-! ## A010338.P10742612176165497165

`eq[7, A003285(A028310(n))]`
-/

namespace A010338.P10742612176165497165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010338.P10742612176165497165

/-! ## A010338.P18145165308254385350

`A004482(eq[7, A003285(n+1)])`
-/

namespace A010338.P18145165308254385350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P18145165308254385350

/-! ## A010338.P18373301395004230908

`A011760(eq[7, A003285(n+1)])`
-/

namespace A010338.P18373301395004230908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P18373301395004230908

/-! ## A010338.P6290174378951378435

`A020725(eq[7, A003285(n+1)])`
-/

namespace A010338.P6290174378951378435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P6290174378951378435

/-! ## A010338.P12276970211454444041

`A065475(eq[7, A003285(n+1)])`
-/

namespace A010338.P12276970211454444041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P12276970211454444041

/-! ## A010338.P14041317039335542499

`A098180(eq[7, A003285(n+1)])`
-/

namespace A010338.P14041317039335542499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P14041317039335542499

/-! ## A010338.P8006941052698928383

`A020725(eq[7, A097853(n+1)])`
-/

namespace A010338.P8006941052698928383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P8006941052698928383

/-! ## A010338.P15125072370631709305

`A020725(eq[8, A067280(n+1)])`
-/

namespace A010338.P15125072370631709305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010338.P15125072370631709305

/-!
# A010339: Numbers k such that the continued fraction for sqrt(k) has period 9.

The programs for A010339, there is no canonical definition to state claims against.
-/

/-! ## A010339.P4687484674161017838

`eq[9, A003285(A028310(n))]`
-/

namespace A010339.P4687484674161017838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010339.P4687484674161017838

/-! ## A010339.P736106234750478659

`A004482(eq[9, A003285(n+1)])`
-/

namespace A010339.P736106234750478659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010339.P736106234750478659

/-! ## A010339.P2715392992068698452

`A020725(eq[9, A003285(n+1)])`
-/

namespace A010339.P2715392992068698452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010339.P2715392992068698452

/-! ## A010339.P6634990294723372699

`eq[9, A003285(A066182(n+1))]`
-/

namespace A010339.P6634990294723372699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010339.P6634990294723372699

/-! ## A010339.P3763714695116003687

`A065475(eq[10, A067280(n+1)])`
-/

namespace A010339.P3763714695116003687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A010339.P3763714695116003687

/-!
# A010340: Sum of terms in period of continued fraction for sqrt(n).

The programs for A010340, there is no canonical definition to state claims against.
-/

/-! ## A010340.P8363286143320844863

`A308720(n+1)+A010341(n+1)`
-/

namespace A010340.P8363286143320844863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308720 (n + 1) + A010341 (n + 1)

end

end A010340.P8363286143320844863

/-! ## A010340.P9481625032622415380

`∑{e}[A059903(n+1), #]`
-/

namespace A010340.P9481625032622415380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A010340.P9481625032622415380

/-! ## A010340.P12318373735269197037

`A001222(A059903(n+1))`
-/

namespace A010340.P12318373735269197037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059903 (n + 1)).toNat

end

end A010340.P12318373735269197037

/-! ## A010340.P917321428364784753

`A216673((n+1)*A347205(n))`
-/

namespace A010340.P917321428364784753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 ((n + 1 : ℤ) * A347205 n).toNat

end

end A010340.P917321428364784753

/-!
# A010341: Sum of all terms except last in period of continued fraction for sqrt(n).

The programs for A010341, there is no canonical definition to state claims against.
-/

/-! ## A010341.P1314914041167633056

`A010340(n+1)-A161205(n+1)%A001650(n+1)`
-/

namespace A010341.P1314914041167633056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (n + 1) - Int.tmod (A161205 (n + 1)) (A001650 (n + 1))

end

end A010341.P1314914041167633056

/-! ## A010341.P7958492132211921865

`A010340(n+1)-A308720(n+1)`
-/

namespace A010341.P7958492132211921865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010340 (n + 1) - A308720 (n + 1)

end

end A010341.P7958492132211921865

/-! ## A010341.P15839843027057375680

`A002349(n+1)%A286600(A001045(n))`
-/

namespace A010341.P15839843027057375680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002349 (n + 1)) (A286600 (A001045 n).toNat)

end

end A010341.P15839843027057375680

/-! ## A010341.P13271315565708764619

`A341935(and(A002349(n+1), A006703(n+1)))`
-/

namespace A010341.P13271315565708764619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (Int.land (A002349 (n + 1)) (A006703 (n + 1))).toNat

end

end A010341.P13271315565708764619

/-! ## A010341.P15887723190145003554

`A000203(n+2)%A007895(A008306(n+2))`
-/

namespace A010341.P15887723190145003554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A007895 (A008306 (n + 2)).toNat)

end

end A010341.P15887723190145003554

/-!
# A010342: Numbers k such that all terms in the periodic part of the continued fraction for sqrt(k) except the final term are 1.

The programs for A010342, there is no canonical definition to state claims against.
-/

/-! ## A010342.P14343524017628518753

`filter[A345475(n+1), A023969(#)]`
-/

namespace A010342.P14343524017628518753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023969 (f1 j).toNat = 1) n)

end

end A010342.P14343524017628518753

/-! ## A010342.P15355540257227950074

`∩[A004201(n+1), A345475(n+1)]`
-/

namespace A010342.P15355540257227950074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010342.P15355540257227950074

/-! ## A010342.P18129676921093073233

`∩[A031425(n+1), A345475(n+1)]`
-/

namespace A010342.P18129676921093073233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010342.P18129676921093073233

/-! ## A010342.P11932869379614472393

`∩[A063657(n+1), A345475(n+1)]`
-/

namespace A010342.P11932869379614472393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010342.P11932869379614472393

/-! ## A010342.P6430558888935083401

`∩[A108575(n+1), A345475(n+1)]`
-/

namespace A010342.P6430558888935083401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010342.P6430558888935083401

/-!
# A010343: Base-4 Armstrong or narcissistic positive numbers.

The programs for A010343, there is no canonical definition to state claims against.
-/

/-! ## A010343.P13627159550523650733

`A007090(A010344(n+1))`
-/

namespace A010343.P13627159550523650733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A010344 (n + 1)).toNat

end

end A010343.P13627159550523650733

/-! ## A010343.P12204047362832693872

`record[A336159(∑[A318458(n+1)!])]`
-/

namespace A010343.P12204047362832693872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A318458 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336159 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010343.P12204047362832693872

/-!
# A010344: Base-4 Armstrong or narcissistic numbers (written in base 10).

The programs for A010344, there is no canonical definition to state claims against.
-/

/-! ## A010344.P16825649134743530539

`A101337(A010343(n+1))`
-/

namespace A010344.P16825649134743530539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A010343 (n + 1)).toNat

end

end A010344.P16825649134743530539

/-!
# A010345: Base-5 Armstrong or narcissistic numbers, written in base 5.

The programs for A010345, there is no canonical definition to state claims against.
-/

/-! ## A010345.P7572567128462476483

`A007091(A010346(n+1))`
-/

namespace A010345.P7572567128462476483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A010346 (n + 1)).toNat

end

end A010345.P7572567128462476483

/-! ## A010345.P13933246344149390383

`A007091(A357954(n+1)%A234600(2*n+5))`
-/

namespace A010345.P13933246344149390383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.tmod (A357954 (n + 1)) (A234600 (2 * n + 5))).toNat

end

end A010345.P13933246344149390383

/-! ## A010345.P15456382295731881840

`A257347(A100071(n)+1)`
-/

namespace A010345.P15456382295731881840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A100071 n + 1).toNat

end

end A010345.P15456382295731881840

/-!
# A010346: Base-5 Armstrong or narcissistic numbers (written in base 10).

The programs for A010346, there is no canonical definition to state claims against.
-/

/-! ## A010346.P2469824062999802248

`∩[A162222(n+1), A357954(n+1)]`
-/

namespace A010346.P2469824062999802248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010346.P2469824062999802248

/-! ## A010346.P17101219721908060661

`A028900(A010345(n+1))`
-/

namespace A010346.P17101219721908060661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A010345 (n + 1)).toNat

end

end A010346.P17101219721908060661

/-! ## A010346.P6298353319745818632

`A101337(A010345(Δ[n²]-n))`
-/

namespace A010346.P6298353319745818632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A010345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A010346.P6298353319745818632

/-! ## A010346.P17705380430024706702

`A101337(root(A010345(n+1), 2)²)`
-/

namespace A010346.P17705380430024706702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (SequenceMachineLib.roundAway (((A010345 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A010346.P17705380430024706702

/-! ## A010346.P16395133490748104919

`A357954(A161949(n+1)+n%7*floor(n/7))`
-/

namespace A010346.P16395133490748104919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357954 (A161949 (n + 1) + ((n % 7 : ℕ) : ℤ) * ⌊(n : ℚ) / 7⌋).toNat

end

end A010346.P16395133490748104919

/-!
# A010347: Base-6 Armstrong or narcissistic numbers, written in base 6.

The programs for A010347, there is no canonical definition to state claims against.
-/

/-! ## A010347.P2619018901639880146

`A007092(A010348(n+1))`
-/

namespace A010347.P2619018901639880146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A010348 (n + 1)).toNat

end

end A010347.P2619018901639880146

/-! ## A010347.P4254571455302598493

`3^a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A010347.P4254571455302598493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  3 ^ a (n - 1)

end

end A010347.P4254571455302598493

/-!
# A010348: Base-6 Armstrong or narcissistic numbers (written in base 10).

The programs for A010348, there is no canonical definition to state claims against.
-/

/-! ## A010348.P17862785309134568937

`A162225(∑{e}[A178664(n), #]+1)`
-/

namespace A010348.P17862785309134568937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162225 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A010348.P17862785309134568937

/-! ## A010348.P4600852782978217322

`∩[A089583(n+1), A162225(n+1)]`
-/

namespace A010348.P4600852782978217322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A010348.P4600852782978217322

/-! ## A010348.P7853729447887013152

`A162225(A214281(n)+A135385(n+2))`
-/

namespace A010348.P7853729447887013152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162225 (A214281 n + A135385 (n + 2)).toNat

end

end A010348.P7853729447887013152

/-!
# A010349: Base-7 Armstrong or narcissistic numbers, written in base 7.

The programs for A010349, there is no canonical definition to state claims against.
-/

/-! ## A010349.P2319877166098071611

`A007093(A010350(n+1))`
-/

namespace A010349.P2319877166098071611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A010350 (n + 1)).toNat

end

end A010349.P2319877166098071611

/-! ## A010349.P13256320948564554762

`∑[A086617(A287141(n))]`
-/

namespace A010349.P13256320948564554762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 (A287141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010349.P13256320948564554762

/-! ## A010349.P3185473446379499540

`∑[A239700(A148244(n))]`
-/

namespace A010349.P3185473446379499540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A148244 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010349.P3185473446379499540

/-! ## A010349.P5638828291013616364

`A122282(A165304(n+1))`
-/

namespace A010349.P5638828291013616364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A165304 (n + 1)).toNat

end

end A010349.P5638828291013616364

/-! ## A010349.P1577491470034513288

`eq[A072047(n+1), A384134(n+1)]`
-/

namespace A010349.P1577491470034513288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010349.P1577491470034513288

/-!
# A010350: Base-7 Armstrong or narcissistic numbers (written in base 10).

The programs for A010350, there is no canonical definition to state claims against.
-/

/-! ## A010350.P6277365554320097139

`A028902(A010349(n+1))`
-/

namespace A010350.P6277365554320097139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A010349 (n + 1)).toNat

end

end A010350.P6277365554320097139

/-! ## A010350.P10786042226204267616

`A101337(A184955(n)+A010349(n+1))`
-/

namespace A010350.P10786042226204267616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A184955 n + A010349 (n + 1)).toNat

end

end A010350.P10786042226204267616

/-! ## A010350.P5551961045274465576

`A101337(A185255(n)+A010349(n+1))`
-/

namespace A010350.P5551961045274465576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185255 n + A010349 (n + 1)).toNat

end

end A010350.P5551961045274465576

/-! ## A010350.P14839074263282657281

`A101337(A326679(n)+A010349(n+1))`
-/

namespace A010350.P14839074263282657281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A326679 n + A010349 (n + 1)).toNat

end

end A010350.P14839074263282657281

/-! ## A010350.P8386463507036436953

`A101337(A010349(n+1)*A101027(n))`
-/

namespace A010350.P8386463507036436953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A010349 (n + 1) * A101027 n).toNat

end

end A010350.P8386463507036436953

/-!
# A010351: Base-8 Armstrong or narcissistic numbers, written in base 8.

The programs for A010351, there is no canonical definition to state claims against.
-/

/-! ## A010351.P15544277091460799793

`A007094(A010354(n+1))`
-/

namespace A010351.P15544277091460799793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A010354 (n + 1)).toNat

end

end A010351.P15544277091460799793

/-! ## A010351.P14231500908293827487

`∑[A147215(n+1)-A025466(A071969(n))]`
-/

namespace A010351.P14231500908293827487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147215 (n + 1) - A025466 (A071969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010351.P14231500908293827487

/-! ## A010351.P1124103720794837012

`A229859(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A010351.P1124103720794837012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  A229859 (a (n - 1)).toNat

end

end A010351.P1124103720794837012

/-! ## A010351.P13172891951985621854

`∑[A231005(A006723(n)²)]`
-/

namespace A010351.P13172891951985621854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231005 (A006723 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010351.P13172891951985621854

/-! ## A010351.P10038380760129247303

`∑[A231010(A006723(n)²)]`
-/

namespace A010351.P10038380760129247303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 (A006723 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010351.P10038380760129247303

/-!
# A010352: Base-9 Armstrong or narcissistic numbers, written in base 9.

The programs for A010352, there is no canonical definition to state claims against.
-/

/-! ## A010352.P4948559993698082699

`A007095(A010353(n+1))`
-/

namespace A010352.P4948559993698082699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A010353 (n + 1)).toNat

end

end A010352.P4948559993698082699

/-! ## A010352.P7283380858937570810

`∑[A336870(A339380(n)²)]`
-/

namespace A010352.P7283380858937570810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336870 (A339380 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010352.P7283380858937570810

/-! ## A010352.P3522535977070255158

`A114033(A146813(n+1))+n`
-/

namespace A010352.P3522535977070255158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114033 (A146813 (n + 1)).toNat + (n : ℤ)

end

end A010352.P3522535977070255158

/-! ## A010352.P9911109440553772823

`eq[A034584(n), A095186(n+1)]`
-/

namespace A010352.P9911109440553772823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095186 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010352.P9911109440553772823

/-! ## A010352.P7555146735032378096

`eq[A239616(n+1), A306311(n+1)]`
-/

namespace A010352.P7555146735032378096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010352.P7555146735032378096

/-!
# A010353: Base-9 Armstrong or narcissistic numbers (written in base 10).

The programs for A010353, there is no canonical definition to state claims against.
-/

/-! ## A010353.P2326049694085821907

`A028904(A010352(n+1))`
-/

namespace A010353.P2326049694085821907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A010352 (n + 1)).toNat

end

end A010353.P2326049694085821907

/-! ## A010353.P310383501315025286

`A101337(A010352(n+1))+A025469(n)`
-/

namespace A010353.P310383501315025286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A010352 (n + 1)).toNat + A025469 n

end

end A010353.P310383501315025286

/-! ## A010353.P10081549123507721545

`A101337(A185255(n)+A010352(n+1))`
-/

namespace A010353.P10081549123507721545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185255 n + A010352 (n + 1)).toNat

end

end A010353.P10081549123507721545

/-! ## A010353.P770303303410610234

`A101337(A185284(n)+A010352(n+1))`
-/

namespace A010353.P770303303410610234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185284 n + A010352 (n + 1)).toNat

end

end A010353.P770303303410610234

/-! ## A010353.P1897510673019397197

`A101337(A185294(n)+A010352(n+1))`
-/

namespace A010353.P1897510673019397197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185294 n + A010352 (n + 1)).toNat

end

end A010353.P1897510673019397197

/-!
# A010354: Base-8 Armstrong or narcissistic numbers (written in base 10).

The programs for A010354, there is no canonical definition to state claims against.
-/

/-! ## A010354.P15359469353131635966

`A028903(A010351(n+1))`
-/

namespace A010354.P15359469353131635966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A010351 (n + 1)).toNat

end

end A010354.P15359469353131635966

/-! ## A010354.P8757824218233064312

`A101337(A010351(n+1))+A025469(n)`
-/

namespace A010354.P8757824218233064312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A010351 (n + 1)).toNat + A025469 n

end

end A010354.P8757824218233064312

/-! ## A010354.P17373758713388223591

`A101337(A184955(n)+A010351(n+1))`
-/

namespace A010354.P17373758713388223591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A184955 n + A010351 (n + 1)).toNat

end

end A010354.P17373758713388223591

/-! ## A010354.P928429543368575190

`A101337(A185255(n)+A010351(n+1))`
-/

namespace A010354.P928429543368575190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185255 n + A010351 (n + 1)).toNat

end

end A010354.P928429543368575190

/-! ## A010354.P13316356679478909597

`A101337(A185284(n)+A010351(n+1))`
-/

namespace A010354.P13316356679478909597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A185284 n + A010351 (n + 1)).toNat

end

end A010354.P13316356679478909597

/-!
# A010355: Number of unlabeled nonseparable (or 2-connected) graphs (or blocks) with n edges.

The programs for A010355, there is no canonical definition to state claims against.
-/

/-! ## A010355.P11269704910556088607

`A343869(n+1)+A025457(A148294(n))`
-/

namespace A010355.P11269704910556088607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343869 (n + 1) + A025457 (A148294 n).toNat

end

end A010355.P11269704910556088607

/-! ## A010355.P12278967052704245587

`A343869(n+1)+A054923(A304887(n))`
-/

namespace A010355.P12278967052704245587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343869 (n + 1) + A054923 (A304887 n).toNat

end

end A010355.P12278967052704245587

/-! ## A010355.P16546693408850043929

`A343869(n+1)+A325678(A324093(n+1))`
-/

namespace A010355.P16546693408850043929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343869 (n + 1) + A325678 (A324093 (n + 1)).toNat

end

end A010355.P16546693408850043929

/-! ## A010355.P2632944223214963930

`A185284(n)+A343869(n+1)+A341979(A304887(n))`
-/

namespace A010355.P2632944223214963930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (A343869 (n + 1) + A341979 ((A304887 n).toNat + 59))

end

end A010355.P2632944223214963930

/-!
# A010356: Triangle of single-edge stars with n edges by cyclotomic index.

The programs for A010356, there is no canonical definition to state claims against.
-/

/-! ## A010356.P4395827825316359438

`A325678(2^A082870(n))`
-/

namespace A010356.P4395827825316359438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082870 n : ℤ))).toNat

end

end A010356.P4395827825316359438

/-! ## A010356.P8273860904601150771

`A048766(3^A082870(n))`
-/

namespace A010356.P8273860904601150771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A082870 n : ℤ))).toNat

end

end A010356.P8273860904601150771

/-!
# A010358: Triangle of multi-edge stars with n edges by cyclotomic index.

The programs for A010358, there is no canonical definition to state claims against.
-/

/-! ## A010358.P17768090212273858990

`A339160(A099375(n)+1+n)`
-/

namespace A010358.P17768090212273858990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (A099375 n + 1 + (n : ℤ)).toNat

end

end A010358.P17768090212273858990

/-! ## A010358.P10444780811624677597

`A339160(A212012(n+1)+n)`
-/

namespace A010358.P10444780811624677597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A010358.P10444780811624677597

/-! ## A010358.P3416403656842454567

`A339160(A061579(n)+A003057(n+2))`
-/

namespace A010358.P3416403656842454567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (A061579 n + A003057 (n + 2)).toNat

end

end A010358.P3416403656842454567

/-! ## A010358.P8302025539279946641

`A339160(A038722(n+1)+A002024(n+1))`
-/

namespace A010358.P8302025539279946641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A010358.P8302025539279946641

/-! ## A010358.P17187651565472217339

`A339160(A038722(n+1)+A003057(n+2)-1)`
-/

namespace A010358.P17187651565472217339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (A038722 (n + 1) + (A003057 (n + 2) - 1)).toNat

end

end A010358.P17187651565472217339

/-!
# A010359: Number of rooted multi-edge stars with n edges.

The programs for A010359, there is no canonical definition to state claims against.
-/

/-! ## A010359.P16126895144855284486

`A289493(3*A300042(n))`
-/

namespace A010359.P16126895144855284486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (3 * A300042 n).toNat

end

end A010359.P16126895144855284486

/-! ## A010359.P15973940734390106334

`A194806(A178325(n))-A123575(n)`
-/

namespace A010359.P15973940734390106334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (A178325 n).toNat - A123575 n

end

end A010359.P15973940734390106334

/-! ## A010359.P4797394755263272346

`A271207(n)+A188187(A079800(n+1))`
-/

namespace A010359.P4797394755263272346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271207 n + A188187 (A079800 (n + 1)).toNat

end

end A010359.P4797394755263272346

/-! ## A010359.P4556452025186729538

`A318584(A000040(3*n+2))+A229046(n)`
-/

namespace A010359.P4556452025186729538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318584 (A000040 (3 * n + 2)).toNat + A229046 n

end

end A010359.P4556452025186729538

/-!
# A010360: Triangle of rooted multi-edge stars with n edges by degree of root.

The programs for A010360, there is no canonical definition to state claims against.
-/

/-! ## A010360.P15403545454327369685

`A225644(A102472(n+1))`
-/

namespace A010360.P15403545454327369685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A102472 (n + 1)).toNat

end

end A010360.P15403545454327369685

/-! ## A010360.P13845894403229211729

`A225644(A062323(comp[∑[n]]))`
-/

namespace A010360.P13845894403229211729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A062323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A010360.P13845894403229211729

/-! ## A010360.P5803775667577120574

`A225644(A246654(comp[∑[n-1]]))`
-/

namespace A010360.P5803775667577120574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A246654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A010360.P5803775667577120574

/-!
# A010361: Number of Class A multi-edge stars with n edges and 2 odd unlabeled roots.

The programs for A010361, there is no canonical definition to state claims against.
-/

/-! ## A010361.P14728939585996711928

`A010363(n+1)-A010362(n+1)`
-/

namespace A010361.P14728939585996711928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010363 (n + 1) - A010362 (n + 1)

end

end A010361.P14728939585996711928

/-! ## A010361.P6192446212324279056

`A289495(A202592(n)+A105045(n))`
-/

namespace A010361.P6192446212324279056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (A202592 n + A105045 n).toNat

end

end A010361.P6192446212324279056

/-! ## A010361.P5311949830735841986

`A010363(n+1)-Δ[A177849(A148195(n))]`
-/

namespace A010361.P5311949830735841986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A148195 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010363 (n + 1) - (f1 (n + 1) - f1 n)

end

end A010361.P5311949830735841986

/-! ## A010361.P16710276921630668555

`A010363(n+1)-Δ[A177849(A148239(n))]`
-/

namespace A010361.P16710276921630668555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A148239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010363 (n + 1) - (f1 (n + 1) - f1 n)

end

end A010361.P16710276921630668555

/-! ## A010361.P1065631185396010900

`A010363(n+1)-A277194(A060050(n+3))`
-/

namespace A010361.P1065631185396010900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010363 (n + 1) - A277194 (A060050 (n + 3)).toNat

end

end A010361.P1065631185396010900

/-!
# A010362: Class B multi-edge stars with n edges and 2 odd unlabeled roots.

The programs for A010362, there is no canonical definition to state claims against.
-/

/-! ## A010362.P1981795611254687132

`A085857(xor(n+1, A120900(n)))`
-/

namespace A010362.P1981795611254687132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085857 (Int.xor (n + 1 : ℤ) (A120900 n)).toNat

end

end A010362.P1981795611254687132

/-! ## A010362.P11254721859520431867

`A010363(n+1)-A010361(n+1)`
-/

namespace A010362.P11254721859520431867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010363 (n + 1) - A010361 (n + 1)

end

end A010362.P11254721859520431867

/-! ## A010362.P15279658596355946885

`A025897(xor(A132831(n), A214848(n))+1)`
-/

namespace A010362.P15279658596355946885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (Int.xor (A132831 n) (A214848 n) + 1).toNat

end

end A010362.P15279658596355946885

/-! ## A010362.P5795586858518248854

`A279559(A357570(n))-A321765(2*n+1)`
-/

namespace A010362.P5795586858518248854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279559 (A357570 n).toNat - A321765 (2 * n + 1)

end

end A010362.P5795586858518248854

/-! ## A010362.P4341893208098718741

`(2^n)%A343347(∏[gcd(n+1, ∏{p}[n+1, (n+1)/#])])`
-/

namespace A010362.P4341893208098718741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A343347 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A010362.P4341893208098718741

/-!
# A010363: Multi-edge stars with n edges and 2 odd unlabeled roots.

The programs for A010363, there is no canonical definition to state claims against.
-/

/-! ## A010363.P7114575100636424265

`A010362(n+1)+A010361(n+1)`
-/

namespace A010363.P7114575100636424265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010362 (n + 1) + A010361 (n + 1)

end

end A010363.P7114575100636424265

/-! ## A010363.P16452700227063427324

`A010361(n+1)+Δ[A177849(A148195(n))]`
-/

namespace A010363.P16452700227063427324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A148195 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010361 (n + 1) + (f1 (n + 1) - f1 n)

end

end A010363.P16452700227063427324

/-! ## A010363.P16579703323117729907

`A010361(n+1)+Δ[A177849(A148239(n))]`
-/

namespace A010363.P16579703323117729907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A148239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010361 (n + 1) + (f1 (n + 1) - f1 n)

end

end A010363.P16579703323117729907

/-! ## A010363.P7967258061992797032

`A277194(A060050(n+3))+A010361(n+1)`
-/

namespace A010363.P7967258061992797032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A060050 (n + 3)).toNat + A010361 (n + 1)

end

end A010363.P7967258061992797032

/-! ## A010363.P1406872926535708071

`A168201(xor(5, A302287(n)))+A010361(n+1)`
-/

namespace A010363.P1406872926535708071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Int.xor 5 (A302287 n)).toNat + A010361 (n + 1)

end

end A010363.P1406872926535708071

/-!
# A010364: Class A multi-edge stars with n edges and 2 odd labeled roots.

The programs for A010364, there is no canonical definition to state claims against.
-/

/-! ## A010364.P7765561743231618314

`A010366(n+1)-A010365(n+1)`
-/

namespace A010364.P7765561743231618314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010366 (n + 1) - A010365 (n + 1)

end

end A010364.P7765561743231618314

/-! ## A010364.P9003554052525937700

`A081399(A007043(n)+1)-A010365(n+1)`
-/

namespace A010364.P9003554052525937700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A007043 n + 1).toNat - A010365 (n + 1)

end

end A010364.P9003554052525937700

/-!
# A010365: Class B multi-edge stars with n edges and 2 odd labeled roots.

The programs for A010365, there is no canonical definition to state claims against.
-/

/-! ## A010365.P13424467815255095635

`A010366(n+1)-A010364(n+1)`
-/

namespace A010365.P13424467815255095635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010366 (n + 1) - A010364 (n + 1)

end

end A010365.P13424467815255095635

/-! ## A010365.P10010279583549837598

`A344837(A327077(∑[n]))`
-/

namespace A010365.P10010279583549837598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 (A327077 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A010365.P10010279583549837598

/-! ## A010365.P17778623870925932155

`A345012(A174300(n+1))`
-/

namespace A010365.P17778623870925932155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345012 (A174300 (n + 1)).toNat

end

end A010365.P17778623870925932155

/-! ## A010365.P7571299684850793504

`A085862(or(2, A263779(n)))`
-/

namespace A010365.P7571299684850793504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (Int.lor 2 (A263779 n)).toNat

end

end A010365.P7571299684850793504

/-! ## A010365.P10273983419746023783

`A268443(A079500(n))-A268443(n)`
-/

namespace A010365.P10273983419746023783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268443 (A079500 n).toNat - A268443 n

end

end A010365.P10273983419746023783

/-!
# A010366: Multi-edge stars with n edges and 2 odd labeled roots.

The programs for A010366, there is no canonical definition to state claims against.
-/

/-! ## A010366.P13019777937165096732

`A010365(n+1)+A010364(n+1)`
-/

namespace A010366.P13019777937165096732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010365 (n + 1) + A010364 (n + 1)

end

end A010366.P13019777937165096732

/-! ## A010366.P2970719993904519323

`A081399(A007043(n)+1)`
-/

namespace A010366.P2970719993904519323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A007043 n + 1).toNat

end

end A010366.P2970719993904519323

/-!
# A010368: Number of points of L1 norm 2n in Hamming code version of E_8 lattice.

The programs for A010368, the canonical program `A010368.P5465867737350595894` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010368 has offset 0).

The definition of A010368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A010368.P5465867737350595894

`ceil(A019564(n)/8)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A010368

/-- `ceil(A019564(n)/8)` -/
def P5465867737350595894.Spec : Prop :=
  ∀ n, P5465867737350595894.a n = A010368 n

theorem P5465867737350595894.correct : P5465867737350595894.Spec := by
  intro n
  simp only [A010368]

end A010368

/-! ## A010368.P10458712183242461506

`A019564(n)/gcd(8, A008412(n))`
-/

namespace A010368.P10458712183242461506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019564 n : ℚ) / (Int.gcd 8 (A008412 n) : ℚ)

end

end A010368.P10458712183242461506

namespace A010368

/-- `A019564(n)/gcd(8, A008412(n))` -/
def P10458712183242461506.Spec : Prop :=
  ∀ n, P10458712183242461506.a n = (A010368 n : ℚ)

end A010368

/-! ## A010368.P3567695665872912610

`ceil(A008416(2*n)/8)`
-/

namespace A010368.P3567695665872912610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008416 (2 * n) : ℚ) / 8⌉

end

end A010368.P3567695665872912610

namespace A010368

/-- `ceil(A008416(2*n)/8)` -/
def P3567695665872912610.Spec : Prop :=
  ∀ n, P3567695665872912610.a n = A010368 n

end A010368

/-! ## A010368.P7818017838967329713

`floor(A000007(n)+A008416(2*n)/8)`
-/

namespace A010368.P7818017838967329713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A008416 (2 * n) : ℚ) / 8⌋

end

end A010368.P7818017838967329713

namespace A010368

/-- `floor(A000007(n)+A008416(2*n)/8)` -/
def P7818017838967329713.Spec : Prop :=
  ∀ n, P7818017838967329713.a n = A010368 n

end A010368

/-! ## A010368.P18003199585402010892

`floor(A008683((n+1)²)+A008416(2*n)/8)`
-/

namespace A010368.P18003199585402010892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 ((n + 1) ^ 2) : ℚ) + (A008416 (2 * n) : ℚ) / 8⌋

end

end A010368.P18003199585402010892

namespace A010368

/-- `floor(A008683((n+1)²)+A008416(2*n)/8)` -/
def P18003199585402010892.Spec : Prop :=
  ∀ n, P18003199585402010892.a n = A010368 n

end A010368

/-!
# A010369: Number of points of L1 norm 2n in root system version of E_8 lattice.

The programs for A010369, there is no canonical definition to state claims against.
-/

/-! ## A010369.P18079969665524213003

`A045651(n)%A008416(A257143(n))`
-/

namespace A010369.P18079969665524213003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045651 n) (A008416 (A257143 n).toNat)

end

end A010369.P18079969665524213003

/-!
# A010370: a(n) = binomial(2*n, n)^2 / (1-2*n).

The programs for A010370, the canonical program `A010370.P13867459919168582226` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A010370 has offset 0).

The definition of A010370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A010370.P13867459919168582226

`C(2*n, n)²/(1-2*n)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A010370

/-- `C(2*n, n)²/(1-2*n)` -/
def P13867459919168582226.Spec : Prop :=
  ∀ n, P13867459919168582226.a n = (A010370 n : ℚ)

end A010370

/-! ## A010370.P17660605992738008652

`A000984(n)*A002420(n)`
-/

namespace A010370.P17660605992738008652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002420 n

end

end A010370.P17660605992738008652

namespace A010370

/-- `A000984(n)*A002420(n)` -/
def P17660605992738008652.Spec : Prop :=
  ∀ n, P17660605992738008652.a n = A010370 n

end A010370

/-! ## A010370.P16406017979495587404

`A100320(n)*A115140(n)`
-/

namespace A010370.P16406017979495587404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n * A115140 n

end

end A010370.P16406017979495587404

namespace A010370

/-- `A100320(n)*A115140(n)` -/
def P16406017979495587404.Spec : Prop :=
  ∀ n, P16406017979495587404.a n = A010370 n

end A010370

/-! ## A010370.P13836353668607822730

`A002420(n)²*A165747(n)`
-/

namespace A010370.P13836353668607822730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n ^ 2 * A165747 n

end

end A010370.P13836353668607822730

namespace A010370

/-- `A002420(n)²*A165747(n)` -/
def P13836353668607822730.Spec : Prop :=
  ∀ n, P13836353668607822730.a n = A010370 n

end A010370

/-! ## A010370.P6552543382351959826

`A002420(n)*A068555(∑[n])`
-/

namespace A010370.P6552543382351959826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A068555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A010370.P6552543382351959826

namespace A010370

/-- `A002420(n)*A068555(∑[n])` -/
def P6552543382351959826.Spec : Prop :=
  ∀ n, P6552543382351959826.a n = A010370 n

end A010370

/-! ## A010370.P1759390152114462678

`record[A081668(n)]*A002420(n)`
-/

namespace A010370.P1759390152114462678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002420 n

end

end A010370.P1759390152114462678

namespace A010370

/-- `record[A081668(n)]*A002420(n)` -/
def P1759390152114462678.Spec : Prop :=
  ∀ n, P1759390152114462678.a n = A010370 n

end A010370

/-! ## A010370.P2726220274205917703

`record[A126869(n)]*A002420(n)`
-/

namespace A010370.P2726220274205917703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002420 n

end

end A010370.P2726220274205917703

namespace A010370

/-- `record[A126869(n)]*A002420(n)` -/
def P2726220274205917703.Spec : Prop :=
  ∀ n, P2726220274205917703.a n = A010370 n

end A010370

/-! ## A010370.P6120676212955629069

`A001405(2*n)*A002420(n)`
-/

namespace A010370.P6120676212955629069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A002420 n

end

end A010370.P6120676212955629069

namespace A010370

/-- `A001405(2*n)*A002420(n)` -/
def P6120676212955629069.Spec : Prop :=
  ∀ n, P6120676212955629069.a n = A010370 n

end A010370

/-! ## A010370.P8709539642884033546

`A002420(n)*A056040(2*n)`
-/

namespace A010370.P8709539642884033546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A056040 (2 * n)

end

end A010370.P8709539642884033546

namespace A010370

/-- `A002420(n)*A056040(2*n)` -/
def P8709539642884033546.Spec : Prop :=
  ∀ n, P8709539642884033546.a n = A010370 n

end A010370

/-! ## A010370.P15768635634135718298

`A002420(n)*A063886(2*n)`
-/

namespace A010370.P15768635634135718298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A063886 (2 * n)

end

end A010370.P15768635634135718298

namespace A010370

/-- `A002420(n)*A063886(2*n)` -/
def P15768635634135718298.Spec : Prop :=
  ∀ n, P15768635634135718298.a n = A010370 n

end A010370

/-!
# A010371: Number of segments used to represent n on a 7-segment calculator display; version where '6', '7' and '9' use 6, 4 and 6 segments, respectively.

The programs for A010371, there is no canonical definition to state claims against.
-/

/-! ## A010371.P16904275787377270423

`A074458(n)+A102683(n)`
-/

namespace A010371.P16904275787377270423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n + A102683 n

end

end A010371.P16904275787377270423

/-! ## A010371.P12852572635709251281

`A006942(n)+A102679(n)-A102681(n)`
-/

namespace A010371.P12852572635709251281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n + A102679 n - A102681 n

end

end A010371.P12852572635709251281

/-! ## A010371.P4592835670685899098

`A000120(A234691(n))`
-/

namespace A010371.P4592835670685899098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234691 n).toNat

end

end A010371.P4592835670685899098

/-! ## A010371.P17224997789965230593

`A000120(A234692(n))`
-/

namespace A010371.P17224997789965230593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A234692 n).toNat

end

end A010371.P17224997789965230593

/-! ## A010371.P4112573003303875655

`A316868(n)+A006942(n)`
-/

namespace A010371.P4112573003303875655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A006942 n

end

end A010371.P4112573003303875655

/-! ## A010371.P11264719084848359072

`A102679(A222250(n))+A063720(n)`
-/

namespace A010371.P11264719084848359072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A222250 n).toNat + A063720 n

end

end A010371.P11264719084848359072

/-! ## A010371.P3815174632194602831

`A336396(A051801(n))+A006942(n)`
-/

namespace A010371.P3815174632194602831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336396 (A051801 n).toNat + A006942 n

end

end A010371.P3815174632194602831

/-! ## A010371.P15824406410874903383

`A316867(A235049(n))+A006942(n)`
-/

namespace A010371.P15824406410874903383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A235049 n).toNat + A006942 n

end

end A010371.P15824406410874903383

/-! ## A010371.P344605279644157510

`A277116(n)+A102681(A222252(n))`
-/

namespace A010371.P344605279644157510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102681 (A222252 n).toNat

end

end A010371.P344605279644157510

/-! ## A010371.P10083004756150697003

`A006942(n)+A074458(n)-A277116(n)`
-/

namespace A010371.P10083004756150697003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n + (A074458 n - A277116 n)

end

end A010371.P10083004756150697003

/-! ## A010371.P7222303430931658148

`A100910(A017353(n))+A006942(n)`
-/

namespace A010371.P7222303430931658148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017353 n).toNat + A006942 n

end

end A010371.P7222303430931658148

/-! ## A010371.P8998891695889394892

`A100910(A017377(n)-2)+A006942(n)`
-/

namespace A010371.P8998891695889394892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017377 n - 2).toNat + A006942 n

end

end A010371.P8998891695889394892

/-!
# A010372: Number of unrooted quartic trees with n (unlabeled) nodes and possessing a centroid; number of n-carbon alkanes C(n)H(2n +2) with a centroid ignoring stereoisomers.

The programs for A010372, there is no canonical definition to state claims against.
-/

/-! ## A010372.P5173608424622577532

`A122197(A109912(n))-round(sin(n%10/ϕ))`
-/

namespace A010372.P5173608424622577532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A109912 n).toNat - SequenceMachineLib.roundAway (Real.sin (((n % 10 : ℕ) : ℝ) / Real.goldenRatio))

end

end A010372.P5173608424622577532

/-!
# A010373: Number of unrooted quartic trees with 2n (unlabeled) nodes and possessing a bicentroid; number of 2n-carbon alkanes C(2n)H(4n+2) with a bicentroid, ignoring stereoisomers.

The programs for A010373, there is no canonical definition to state claims against.
-/

/-! ## A010373.P12478073008903691949

`C(A000598(n+1)+1, 2)`
-/

namespace A010373.P12478073008903691949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000598 (n + 1) + 1).toNat 2

end

end A010373.P12478073008903691949

/-! ## A010373.P17910111044293897200

`A000602(2*(n+1))-A010372(2*(n+1))`
-/

namespace A010373.P17910111044293897200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (2 * (n + 1)) - A010372 (2 * (n + 1))

end

end A010373.P17910111044293897200

/-! ## A010373.P15838902738022064827

`A000217(A000598(n+1))`
-/

namespace A010373.P15838902738022064827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000598 (n + 1)).toNat

end

end A010373.P15838902738022064827

/-! ## A010373.P14743259757123740585

`A000217(ratio[A000598(n)]*A000598(n))`
-/

namespace A010373.P14743259757123740585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A000598 n : ℚ))).toNat

end

end A010373.P14743259757123740585

/-! ## A010373.P130216323236921512

`A000217(A000598(n)-Δ[-A000598(n)])`
-/

namespace A010373.P130216323236921512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000598 n - (f1 (n + 1) - f1 n)).toNat

end

end A010373.P130216323236921512

/-!
# A010374: Number of directed site animals with no loops enumerated by area (or number of sites).

The programs for A010374, there is no canonical definition to state claims against.
-/

/-! ## A010374.P16034640367697733357

`A103221(A121907(n))+A001333(n)`
-/

namespace A010374.P16034640367697733357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A121907 n).toNat + A001333 n

end

end A010374.P16034640367697733357

/-! ## A010374.P8787793138368701479

`A001906(n)+A001462(A275756(n+1))`
-/

namespace A010374.P8787793138368701479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n + A001462 (A275756 (n + 1)).toNat

end

end A010374.P8787793138368701479

/-! ## A010374.P8694590403965392192

`∑[A100196(A150169(n))]`
-/

namespace A010374.P8694590403965392192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A010374.P8694590403965392192

/-! ## A010374.P9840646853865237086

`A261664(n+2)-A182097(3*n+2)`
-/

namespace A010374.P9840646853865237086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 2) - A182097 (3 * n + 2)

end

end A010374.P9840646853865237086

/-!
# A010388: Squares mod 26.

The programs for A010388, there is no canonical definition to state claims against.
-/

/-! ## A010388.P6278550201182666452

`lt[0, A107498(2*n)]`
-/

namespace A010388.P6278550201182666452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107498 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010388.P6278550201182666452

/-! ## A010388.P2172155895022270638

`lt[0, A107499(3*n)]`
-/

namespace A010388.P2172155895022270638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107499 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010388.P2172155895022270638

/-! ## A010388.P7040350982714800019

`lt[0, A107501(3*n)]`
-/

namespace A010388.P7040350982714800019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107501 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010388.P7040350982714800019

/-! ## A010388.P3078463799954295722

`lt[n, A107502(6*n)]`
-/

namespace A010388.P3078463799954295722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107502 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010388.P3078463799954295722

/-! ## A010388.P13609462091977994891

`lt[n, A107504(8*n)]`
-/

namespace A010388.P13609462091977994891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107504 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A010388.P13609462091977994891

/-!
# A010391: Squares mod 29.

The programs for A010391, there is no canonical definition to state claims against.
-/

/-! ## A010391.P16481218702418298033

`record[n*A011587(n)]`
-/

namespace A010391.P16481218702418298033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010391.P16481218702418298033

/-! ## A010391.P7644130759368464589

`A010419(n+1)%29`
-/

namespace A010391.P7644130759368464589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010419 (n + 1)) 29

end

end A010391.P7644130759368464589

/-! ## A010391.P18415351023502122335

`comp[A028771(comp[24*n])]`
-/

namespace A010391.P18415351023502122335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010391.P18415351023502122335

/-! ## A010391.P369351697041107075

`eq[n, n*A186305(n)]`
-/

namespace A010391.P369351697041107075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A010391.P369351697041107075

/-! ## A010391.P4206834585308832129

`A010419(A005496(n))`
-/

namespace A010391.P4206834585308832129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010419 (A005496 n).toNat

end

end A010391.P4206834585308832129

/-!
# A010392: Squares mod 31.

The programs for A010392, there is no canonical definition to state claims against.
-/

/-! ## A010392.P12736481735174616146

`record[n*((n^5)%31)%2]`
-/

namespace A010392.P12736481735174616146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 5 % 31 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010392.P12736481735174616146

/-! ## A010392.P9549386430779946907

`A010423(comp[25*n])`
-/

namespace A010392.P9549386430779946907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A010392.P9549386430779946907

/-! ## A010392.P13334515212361860948

`record[n*A011588(n)]`
-/

namespace A010392.P13334515212361860948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010392.P13334515212361860948

/-! ## A010392.P9927895237299889912

`A010423(n+1)%35`
-/

namespace A010392.P9927895237299889912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010423 (n + 1)) 35

end

end A010392.P9927895237299889912

/-! ## A010392.P15181875418908993927

`A004178(A010423(n+1))`
-/

namespace A010392.P15181875418908993927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (A010423 (n + 1)).toNat

end

end A010392.P15181875418908993927

/-!
# A010394: Squares mod 33.

The programs for A010394, there is no canonical definition to state claims against.
-/

/-! ## A010394.P10755516926897919927

`A010427(n+1)%33`
-/

namespace A010394.P10755516926897919927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010427 (n + 1)) 33

end

end A010394.P10755516926897919927

/-! ## A010394.P5620894412186668871

`A010427(∑[A303694(n)])`
-/

namespace A010394.P5620894412186668871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A010394.P5620894412186668871

/-! ## A010394.P8231202347863461885

`eq[A004183(n), A070656(n)]`
-/

namespace A010394.P8231202347863461885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010394.P8231202347863461885

/-! ## A010394.P11976384379582936746

`eq[A070656(n), A106608(n)]`
-/

namespace A010394.P11976384379582936746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010394.P11976384379582936746

/-! ## A010394.P8625494002362578431

`eq[A070656(n), A106614(n)]`
-/

namespace A010394.P8625494002362578431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A010394.P8625494002362578431

/-!
# A010395: Squares mod 34.

The programs for A010395, there is no canonical definition to state claims against.
-/

/-! ## A010395.P14776569303223129920

`comp[lt[(n²²²+1)%17-1, -char[1]]]`
-/

namespace A010395.P14776569303223129920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010395.P14776569303223129920

/-! ## A010395.P14118443804506908742

`A136805(n+1)%45`
-/

namespace A010395.P14118443804506908742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136805 (n + 1)) 45

end

end A010395.P14118443804506908742

/-! ## A010395.P8882725360101397422

`lt[n^A011584(3*n), 3]`
-/

namespace A010395.P8882725360101397422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A011584 (3 * n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A010395.P8882725360101397422

/-! ## A010395.P2754816904488340374

`A136805(comp[52*n-7]+1)`
-/

namespace A010395.P2754816904488340374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A010395.P2754816904488340374

/-! ## A010395.P16765247874813841752

`lt[or(n, -n)*A011584(n), 1]`
-/

namespace A010395.P16765247874813841752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) * A011584 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010395.P16765247874813841752

/-!
# A010398: Squares mod 37.

The programs for A010398, there is no canonical definition to state claims against.
-/

/-! ## A010398.P10138623308609293517

`record[n*A011589(n)]`
-/

namespace A010398.P10138623308609293517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010398.P10138623308609293517

/-! ## A010398.P3184125823274784096

`A010435(n+1)%37`
-/

namespace A010398.P3184125823274784096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010435 (n + 1)) 37

end

end A010398.P3184125823274784096

/-! ## A010398.P8106845584671820228

`record[n/gcd(33, A070660(n))]`
-/

namespace A010398.P8106845584671820228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Int.gcd 33 (A070660 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010398.P8106845584671820228

/-! ## A010398.P10535958444722803217

`A010435(A291769(n))`
-/

namespace A010398.P10535958444722803217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010435 (A291769 n).toNat

end

end A010398.P10535958444722803217

/-! ## A010398.P6481794200514720498

`A010435(A348553(n))`
-/

namespace A010398.P6481794200514720498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010435 (A348553 n).toNat

end

end A010398.P6481794200514720498

/-!
# A010399: Squares mod 38.

The programs for A010399, there is no canonical definition to state claims against.
-/

/-! ## A010399.P3303858475878522412

`comp[A028751(n+1)]`
-/

namespace A010399.P3303858475878522412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A010399.P3303858475878522412

/-! ## A010399.P17021693616615654283

`lt[-(n*A011585(n)), 1]`
-/

namespace A010399.P17021693616615654283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A011585 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A010399.P17021693616615654283

/-! ## A010399.P14011648022794550083

`comp[lt[A011585(n), A025455(n)]]`
-/

namespace A010399.P14011648022794550083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010399.P14011648022794550083

/-! ## A010399.P17704622309113812780

`comp[lt[A011585(n), A160145(n)]]`
-/

namespace A010399.P17704622309113812780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010399.P17704622309113812780

/-! ## A010399.P17360461822420098232

`comp[lt[A011585(n), A188642(n)]]`
-/

namespace A010399.P17360461822420098232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A010399.P17360461822420098232

