function error=reportFault(faultyFile, testFileStruct)
try    
    %disp(table(testFileStruct))
    T=table(testFileStruct);
    Tfail=T(T.Failed==true,:);
    disp(Tfail)
    aaa=Tfail.Details{faultyFile};
    disp(aaa.DiagnosticRecord.Exception.identifier)
    disp(aaa.DiagnosticRecord.Exception.message)
    error=0;
catch
    error=1;
end

end